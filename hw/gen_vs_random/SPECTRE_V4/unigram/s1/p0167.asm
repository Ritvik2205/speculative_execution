.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovle bx, bx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 33
xor sil, al
xor bl, 93
cmp dil, bl
cmovnbe rax, rcx
not bx
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
or sil, bl
add esi, -5
cmovnbe edi, esi
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
sub dil, dil
xor cx, dx
xchg rsi, rax
and rcx, -102
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
cmovnl rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
adc cl, bl
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
sub al, 98
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
add bl, -115 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 75
and rdx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdx]
add cl, 122 # instrumentation
cmovz rcx, rbx
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rbx
mov al, 83
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
cmp bl, 13
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
