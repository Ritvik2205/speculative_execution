.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -54
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 90
add dl, -61 # instrumentation
seto dl
add bl, -43 # instrumentation
adc bx, 23
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add al, dil
add bl, 70
lea rsi, qword ptr [rcx]
lea rcx, qword ptr [rsi + rdx + 18]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rax], ax
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
mov cl, -72
setbe al
cmovnb rbx, rcx
and rsi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rsi], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
