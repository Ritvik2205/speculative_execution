.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 8
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdx]
cmovo dx, si
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
xor ax, cx
and al, 85
cmovle rdi, rbx
add al, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 67
mov cl, 14
cmovp rax, rsi
mov dl, -124
xchg rdi, rdi
mul eax
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
cmp eax, -813838876
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
xor al, cl
add sil, al
sub ecx, -107
test rbx, 1219566903
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 96
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax], 27
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 37
adc dl, 74
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 8
and sil, sil
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
bts ebx, ebx
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rax
cmp edx, -95
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
test rdx, -1074289902
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
cmovnb eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdi]
btr rbx, 45
bt rbx, rax
imul cx, ax, 23
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
