.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
movsx cx, dil
and rcx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 75
cmovb rcx, rax
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
test sil, al
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
imul rcx, rbx, 47
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
xor dl, -123
adc rdi, 36
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
cmovo rcx, rbx
add cl, -50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
cmovnle rdx, rdi
movsx rdi, al
not cl
sub dil, dl
add cl, 14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
xor cl, sil
mov rbx, rsi
and ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 38
adc dil, bl
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
xchg rax, rdi
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
xchg edi, edx
dec rbx
neg ax
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
movzx rax, dx
sub rdx, 34
test al, 115
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
cmovno rcx, rdx
imul rcx, rbx
xor cx, -80
and rsi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
cmovbe eax, ebx
cmovl eax, esi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
add cl, 40 # instrumentation
cmovnp rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
