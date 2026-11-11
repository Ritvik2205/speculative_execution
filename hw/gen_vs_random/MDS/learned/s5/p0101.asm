.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
or al, bl
or bl, cl
xor bl, dl
bt dx, bx
jmp .bb_0.1
.bb_0.1:
test al, -81
xor dl, -59
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and dil, dl
or rax, -1561934807
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
