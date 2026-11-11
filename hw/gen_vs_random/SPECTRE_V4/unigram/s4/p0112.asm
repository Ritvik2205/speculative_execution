.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
sbb ebx, -54
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
add bl, dl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], -104
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
dec bx
xor bl, 126
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rdx]
test bl, sil
cmovnle dx, dx
add bl, -59
add cl, 7 # instrumentation
adc dx, 78
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
and bl, -119
cmp eax, -813838876
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
cmp dl, -82
cmovnb esi, ecx
xor bl, cl
adc rdx, rsi
and sil, al
movsx dx, sil
mov cl, 14
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], dx
or bl, al
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
movzx rsi, di
not edi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
cmp edi, 3
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], ebx
cmp cx, 0
cmovle rdi, rsi
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 2
mov al, dil
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ebx
or sil, dl
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
