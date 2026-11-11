.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
add sil, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
or al, bl
test cl, -52
sub sil, al
jmp .bb_0.1
.bb_0.1:
and bx, 24
test dil, al
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
xor eax, -1772786275
test al, 115
xor sil, 94
and dil, -23
sbb eax, -920840872
sub al, sil
test ecx, -907816607
not di
mov bl, al
cmp dl, cl
sbb al, -43
and cl, al
add al, -6
sbb dil, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
sbb al, dil
and al, -1
inc cl
xor al, 55
mov bl, sil
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
xor dil, bl
adc dil, al
xor cl, al
and bl, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
