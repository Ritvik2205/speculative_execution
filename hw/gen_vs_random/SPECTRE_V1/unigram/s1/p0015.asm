.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 74
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 33
dec rax
add dil, 56 # instrumentation
cmovns ebx, edi
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
test dil, 18
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
add cl, -29 # instrumentation
lea rdi, qword ptr [rax + rax + 61]
xchg al, al
btr bx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
lea ax, qword ptr [rsi + rdx]
adc al, 86
add cl, -42 # instrumentation
lea ebx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
