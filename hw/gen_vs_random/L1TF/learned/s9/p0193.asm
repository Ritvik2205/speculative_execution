.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 55
cmp cx, 66
or bl, dl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 41
xor cl, 89
lea rax, qword ptr [rdx]
or sil, dil
jmp .bb_0.1
.bb_0.1:
xchg al, dl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
