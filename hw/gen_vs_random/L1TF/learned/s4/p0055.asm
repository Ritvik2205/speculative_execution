.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and al, -68
sbb dil, cl
or rax, 699028911
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax + rcx]
mov bl, dl
jmp .bb_0.2
.bb_0.2:
and al, dil
xor eax, -603819833
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
