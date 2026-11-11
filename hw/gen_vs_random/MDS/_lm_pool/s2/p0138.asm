.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor eax, -127
xor al, -89
test al, dil
or dl, -31
bt esi, ecx
test ebx, -2015966884
jmp .bb_0.1
.bb_0.1:
xor al, 55
bts rdi, 130
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
bt dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
