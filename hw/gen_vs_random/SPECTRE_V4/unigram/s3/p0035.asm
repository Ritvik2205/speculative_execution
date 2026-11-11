.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, sil
add dl, 41
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
cmovs rdx, rax
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
or dx, bx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
adc dil, bl
test eax, 1880179600
xor eax, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rsi]
imul cx, ax, 4
and edi, 87
add ebx, eax
cmp al, bl
movzx cx, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 55
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 26
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rsi]
inc esi
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 78
btc dx, cx
sub cl, al
cmp dl, 65
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
add dl, 41
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, ecx
test sil, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rax
and rax, 91
sub al, cl
bt cx, 111
bts rbx, rdi
cmovb eax, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and dil, 96
cmovle cx, bx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 93
and di, 93
inc edx
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 55
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
