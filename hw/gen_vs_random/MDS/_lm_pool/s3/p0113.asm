.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -24
jmp .bb_0.1
.bb_0.1:
bts rax, 77
xor rbx, 89
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and cl, 79
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
and dil, dil
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
or dil, -76
and si, -121
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
xor dl, -19
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
