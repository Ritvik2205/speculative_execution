.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
or dl, al
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rsi
xor cl, al
test ecx, -1843375753
xor al, 122
test rax, rcx
or al, -24
or dl, al
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
