.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
or al, dl
test edx, -372470678
or cl, 6
and rsi, 70
xor dil, -70
or al, -61
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
or al, 30
xor bl, 67
xor al, 8
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test dl, 27
jmp .bb_0.1
.bb_0.1:
or dil, bl
and rax, 1250429750
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
