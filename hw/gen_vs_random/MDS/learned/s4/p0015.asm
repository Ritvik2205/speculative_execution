.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rsi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rsi]
or dl, cl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
