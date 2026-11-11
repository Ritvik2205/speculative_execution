.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
dec ebx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 39
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
xor rax, rsi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 99
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add dl, dl
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
add sil, bl
sbb sil, 108
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
add dl, -10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
xchg edi, ecx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 2
add cl, -37 # instrumentation
adc edx, 59
cmovnb ecx, eax
sub edx, esi
xor dil, 45
movsx eax, cx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
cmovb cx, cx
mov edi, eax
xor cl, bl
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
adc bl, cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 57
sub bl, sil
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
xchg bx, ax
add al, dil
sbb bl, dl
and dil, dl
cmovnb ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 91
and rsi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edi
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and bx, 95
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
