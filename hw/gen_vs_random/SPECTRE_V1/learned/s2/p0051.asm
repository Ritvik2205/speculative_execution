.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 28
sbb cl, sil
add bl, -95
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
add al, -109
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
dec bl
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], sil
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], cl
cmp al, dl
test bx, 72
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
