.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
xor rdi, rdx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
sbb al, -112
add dl, 47
cmp ecx, 58
xchg ebx, esi
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
sbb al, -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
