.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and eax, 454700988
xor cl, 98
xor rax, -345061362
and al, bl
test al, cl
and di, 99
jmp .bb_0.1
.bb_0.1:
and cx, -2
xor al, dl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
or sil, al
xor cl, dil
and al, -8
btr bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
