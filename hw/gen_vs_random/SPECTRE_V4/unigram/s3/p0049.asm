.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and sil, -84
xor sil, al
or dl, al
sub al, 127
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
test dl, dil
bswap ecx
mov sil, dl
sub al, al
btc rdi, 27
cmovle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 25
cmovo rcx, rbx
bt rax, rbx
cmovnb ax, dx
add cl, 7 # instrumentation
adc dx, 48
and rdx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdx]
cmovnle rdx, rdx
bts eax, edi
sub bl, bl
add ecx, 99
and rcx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sbb al, 54
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
dec bl
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
imul dl
test al, 27
xchg rax, rdx
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
mul rbx
add cl, -69 # instrumentation
adc sil, sil
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
xchg edi, esi
sbb rcx, -73
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cmp dx, 58
add bl, dl
xor sil, 41
or al, al
movsx si, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
