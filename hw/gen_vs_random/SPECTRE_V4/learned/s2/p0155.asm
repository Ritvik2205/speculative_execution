.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, -646827727
or rdx, 1
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
test eax, -651442446
add al, 19
sbb sil, -11
sbb al, -4
mov dil, dl
dec dl
cmovbe di, cx
or di, 122
mov al, 124
cmp dl, 83
neg sil
xchg cl, dil
dec bl
and edi, -102
cmp cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
