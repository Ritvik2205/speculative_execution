.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
sub dil, -39
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
or al, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
or dl, 8
test dl, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
