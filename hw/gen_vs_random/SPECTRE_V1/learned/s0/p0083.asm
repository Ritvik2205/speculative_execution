.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -103 # instrumentation
cmovbe dx, dx
sub sil, -18
neg rsi
add cl, -127
xchg dl, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp esi, 89
add sil, 2
sub bl, -6
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
lea si, qword ptr [rcx]
cmp al, bl
add al, sil
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
