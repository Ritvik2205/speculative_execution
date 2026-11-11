.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
not edx
test cl, -31
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 48
dec dil
mov rcx, 46
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
cmovnbe rsi, rdi
sub rax, rdi
test rbx, 1219566903
cmovb ax, cx
cmp cl, cl
cmovbe ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
test rsi, 89
and rdx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
dec cl
or cx, cx
add cl, -32 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
xor dl, dl
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
xor rsi, rax
sbb cx, -114
add al, 27 # instrumentation
mov dil, dl
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
cmovnbe esi, ebx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rbx
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
cmovnb esi, eax
or al, sil
test cl, -52
btr rbx, 73
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rcx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rbx]
test dil, -26
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
cmovno ecx, edx
test bx, 24072
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 1
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
adc edx, -86
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
