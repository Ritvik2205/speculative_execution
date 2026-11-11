.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
test al, 115
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
neg rbx
adc dil, 38
adc dil, sil
xor cl, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 41
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and cl, dil
mov dl, sil
sub dl, dil
sub al, sil
test eax, 1947430392
cmp al, bl
sub rax, 2016976449
test edx, 1479885278
and eax, -1572488789
add dil, -61
sbb dl, 53
or dil, 5
adc cl, sil
cmp edi, 3
adc dl, al
add sil, al
inc dl
or bl, cl
movsx di, sil
cmovnbe ecx, edx
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
sub cl, dil
cmp cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
