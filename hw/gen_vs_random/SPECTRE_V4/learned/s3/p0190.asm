.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts esi, 18
cmp eax, -2073187604
xchg rax, rbx
cmp al, dl
cmp cl, dl
cmovnz eax, esi
sub bl, dl
or dil, dil
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
test cl, -119
or rsi, 73
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or dl, -26
test al, -24
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
test eax, 1600638830
add al, -3
or dl, dl
and cl, -118
and al, 92
and al, bl
and di, -34
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
inc bl
sub dl, dil
mov dl, dil
and bl, dil
test al, 18
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
adc dl, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
