.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 7
cmp bl, 13
add cl, -37 # instrumentation
adc ebx, 70
imul rdx, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rbx]
adc dil, 24
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
imul dx, ax, 34
neg bl
and cl, sil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 23
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
add al, 118
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
add ebx, 3
movzx rdx, bx
and rsi, 34
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
xor dx, 74
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
movzx di, bl
add ax, -15653
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
cmovb rcx, rsi
btc di, 59
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], esi
movzx edx, bl
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 79
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 33
and edx, 56
and rcx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rcx]
not dx
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
add dil, 72 # instrumentation
cmovle di, ax
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
add bx, bx
test dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
