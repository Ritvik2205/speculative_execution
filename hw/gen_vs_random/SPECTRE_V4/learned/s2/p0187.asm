.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -558243208
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
adc ax, ax
add dl, dl
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
cmp al, -23
cmovnle cx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add cl, -10 # instrumentation
mov cx, -26516
cmovo dx, si
xor rsi, -3
or ax, -15282
and dl, bl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
sub al, 50
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
btc rdi, rsi
cmp dx, si
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
cmp dl, 14
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
