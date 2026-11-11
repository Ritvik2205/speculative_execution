.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, ecx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test bl, dil
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
xor eax, -127
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or al, -61
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 45
test bl, dl
and si, -121
and cl, -6
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
