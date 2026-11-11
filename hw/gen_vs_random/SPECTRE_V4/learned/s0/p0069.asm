.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, -52
and bl, dl
cmp sil, -100
mov al, bl
sub al, sil
sub bl, -89
adc cl, bl
sub dl, cl
adc sil, -63
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
cmp al, -53
sub dl, 107
xor rax, 944027678
and bl, -60
add bl, al
or bl, -35
adc dil, 38
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
add dl, cl
test al, 114
xor bl, dl
add dl, sil
test dl, -102
xor cl, bl
mov cl, 1
cmovle rbx, rdx
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
adc bl, -20
or al, -88
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 79
sub cl, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
