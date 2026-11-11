.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -5889
not al
and rax, -1701787862
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 43
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
xor ax, -6793
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
test rax, 1214712583
xor al, 55
and al, 84
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rax, -636362975
or bl, 100
xor dl, 40
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
