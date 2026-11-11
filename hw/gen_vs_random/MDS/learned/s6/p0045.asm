.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test al, -81
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or sil, bl
xor cl, 98
and rax, -2039117613
not dil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and sil, -9
or sil, cl
or al, -24
xor sil, 110
and al, sil
and bl, dl
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
