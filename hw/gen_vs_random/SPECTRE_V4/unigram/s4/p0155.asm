.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
inc bx
add al, 122 # instrumentation
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
test rax, -344032571
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 57
and eax, -24
cmovs eax, edi
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and sil, cl
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
sbb dx, 9
add cl, 106 # instrumentation
cmovnp rax, rsi
cmovnb edi, eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 96
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
cmp dl, dl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
adc cl, al
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], -12
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
cmovp si, ax
add dl, dl
mov al, al
xchg rdx, rsi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
sbb bl, dl
and dl, 72
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
not rax
or rdx, rcx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
xor bx, 33
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 567129166
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rsi
mul ax
xor sil, 56
mul rbx
add bl, bl
cmovs ax, bx
test ecx, 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
