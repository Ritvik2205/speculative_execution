.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
cmovno bx, dx
sbb cl, bl
lea ax, qword ptr [rcx]
and dl, -109
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
mov dl, dil
xchg bl, dl
adc bl, al
test dil, -116
inc rax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
and al, -54
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
