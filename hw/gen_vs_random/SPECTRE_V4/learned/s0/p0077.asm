.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
sbb al, 43
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
sub al, -84
and bl, -30
or al, dl
adc bl, -58
xor dil, 37
test eax, 1600638830
mov bl, dil
test dl, -102
and cl, bl
cmovnz rcx, rdx
dec sil
and cx, -117
adc dil, 109
sub al, 29
sub rcx, -99
mov al, dil
xor sil, 8
sub bl, al
or al, 1
mov dl, cl
cmp al, 114
adc al, sil
test edi, 2142010790
adc al, -117
and cl, bl
xor al, 99
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
add al, al
cmp bl, -79
add al, -44
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
adc bl, -58
or rsi, 73
and di, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
