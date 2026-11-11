.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, al
xor dil, al
mov dl, sil
cmovno di, dx
sub al, 11
sub cl, dl
and al, 85
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
sbb dil, 16
test al, 115
cmp dl, -82
xor al, cl
sbb sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
