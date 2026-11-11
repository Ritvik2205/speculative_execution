.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
xor cl, -101
test dl, al
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 37
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
xchg ecx, edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 99
bt edi, 46
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
cmp ax, -906
cmovnle rsi, rsi
btr rdi, rcx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdx], bx
test cl, dil
bt eax, 84
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
add dl, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rax]
or dl, al
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 22
cmp al, 114
test dl, 19
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
imul si, di, 24
and rbx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rdi]
xor cl, -85
cmovnb esi, edi
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
test cl, -89
mov rsi, rdi
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
imul eax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
xor sil, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
or bl, dl
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
dec bl
imul cl
or al, -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
