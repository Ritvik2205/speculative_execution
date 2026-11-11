.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
sub si, ax
inc eax
cmp rcx, -121
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 18
sbb dl, sil
inc edi
dec bl
and bl, bl
test bl, -16
cmp al, -122
sbb cl, 12
xor ax, 13329
sub dl, -16
test eax, 1947430392
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
