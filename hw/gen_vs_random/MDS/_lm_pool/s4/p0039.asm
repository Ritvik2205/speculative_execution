.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
or bl, -125
test dil, sil
or sil, dil
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and cl, -19
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
test al, 91
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
bts eax, 222
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
