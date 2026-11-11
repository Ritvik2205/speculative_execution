.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor cl, -13
btr rbx, 63
test bl, -114
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and dx, 3
and rax, 4
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
or ax, -11837
and bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
