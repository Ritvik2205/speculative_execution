.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, bx
sub al, -84
add al, -32
cmovz edi, ecx
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
test al, 57
dec cl
cmp cx, 0
cmp edi, 3
mov bl, sil
test ecx, -304234347
mov cl, dil
test cl, 78
sub si, -92
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
add ebx, -57
xor dl, -66
sbb sil, bl
sbb dl, al
adc edi, -83
test dl, -102
mov dil, cl
cmp bx, 113
sub cl, -94
cmp rax, rbx
inc bl
xor dl, dil
add al, -44
or rcx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
