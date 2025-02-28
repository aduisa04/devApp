  <template>
    <div>
      <header>
        <nav class="topnav">
          <div class="logo-container">
            <img src="img/logo.png" alt="PurfectPaw Logo" class="logo" />
          </div>
          <ul class="nav-links">
            <li><router-link to="/">Home</router-link></li>
            <li><router-link to="/appointment" class="active">Appointment</router-link></li>
            <li><router-link to="/gallery">Gallery</router-link></li>
            <li><router-link to="/aboutus">About Us</router-link></li>
          </ul>
          <div class="profile">
            <img :src="profilePic" alt="Profile" class="profile-pic" />
            <a href="#" class="admin-link" id="profileLink">
              <p style="color: black;">{{ fullName }} <i class="fas fa-caret-down"></i></p>
            </a>
            <div class="dropdown-menu" id="dropdownMenu">
              <a href="#" @click.prevent="logout">Logout</a>
              <router-link to="/account">Account</router-link>
            </div>
          </div>
        </nav>
      </header>

      <!-- Main Section -->
      <section class="main-section">
        <div class="cards-container">
          <div class="card" v-for="clinic in clinics" :key="clinic.id">
            <router-link :to="'/appointment/' + clinic.id">
              <!-- Clinic Logo -->
              <img :src="getLogoUrl(clinic.logo)" :alt="clinic.name + ' Logo'" class="sur" />
              <h3>{{ clinic.name }}</h3>
            </router-link>
          </div>
        </div>
  </section>


      <!-- Footer -->
      <footer>
        <div class="footer-container">
          <div class="footer-logo">
            <img src="img/logo2.png" alt="PurrfectPaw Logo" />
            <p>PurrfectPaw</p>
          </div>
          <div class="footer-center">
            <p class="slogan">SIMPLE. EFFICIENT. ACCESSIBLE</p>
            <p class="description">
              We're a diverse and passionate team that takes ownership of your design and empowers
              <br />
              you to execute the roadmap. We stay light on our feet and truly enjoy delivering great work.
            </p>
            <p>© 2024 PetalloDulis. All Rights Reserved.</p>
          </div>
          <div class="footer-contact">
            <p>Contact Us</p>
            <p><a href="mailto:info@adopt-a-pal.com">info@adopt-a-pal.com</a></p>
            <div class="social-icons">
              <a href="#"><i class="fas fa-envelope"></i></a>
              <a href="#"><i class="fab fa-instagram"></i></a>
              <a href="#"><i class="fab fa-facebook"></i></a>
              <a href="#"><i class="fab fa-twitter"></i></a>
            </div>
          </div>
        </div>
      </footer>
    </div>
  </template>

  <script>
  export default {
    data() {
      return {
        clinics: [], // Array to store clinic data
        firstName: "",
        lastName: "",
        profilePic: "/img/default-profile.jpg",
      };
    },
    computed: {
      fullName() {
        return `${this.firstName} ${this.lastName}`.trim() || 'User';
      }
    },
    created() {
      // Add authentication token to all axios requests
      const token = localStorage.getItem('token'); // or however you store your auth token
      if (token) {
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      }
      
      this.fetchClinics();
      this.getUserProfile();
    },
    methods: {
      async fetchClinics() {
        try {
          const response = await axios.get('/api/clinics', {
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            }
          });
          console.log('Clinics response:', response.data);
          this.clinics = response.data;
        } catch (error) {
          console.error("There was an error fetching the clinics:", error);
          if (error.response?.status === 401) {
            // Handle unauthorized access - maybe redirect to login
            this.$router.push('/login');
          }
        }
      },
      async getUserProfile() {
        try {
          const response = await axios.get("/api/user", {
            headers: {
              'Accept': 'application/json',
              'Content-Type': 'application/json'
            }
          });
          if (response.data) {
            this.firstName = response.data.first_name;
            this.lastName = response.data.last_name;
            this.profilePic = response.data.profile_picture || "/img/default-profile.jpg";
          }
        } catch (error) {
          console.error("Error fetching user profile:", error);
          if (error.response?.status === 401) {
            // Handle unauthorized access - maybe redirect to login
            this.$router.push('/login');
          }
        }
      },
      async logout() {
        try {
          await axios.post("/logout");
          localStorage.removeItem("0"); // Clear stored user data
          this.$router.push("/login");
        } catch (error) {
          console.error("Error logging out:", error);
        }
      },
      getLogoUrl(logo) {
        // If the logo path starts with http or https, it's already a full URL
        if (logo && (logo.startsWith('http://') || logo.startsWith('https://'))) {
          return logo;
        }
        // Otherwise, prepend the complete storage path including images/clinics
        return logo ? `/storage/images/clinics/${logo}` : '/img/default-clinic-logo.png';
      },
    },
  };
  </script>