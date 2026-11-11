.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], cx
dec dil
xor bx, 106
cmp ax, bx
or eax, 143573881
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
movsx edi, sil
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], esi
add sil, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 66
dec al
bts cx, 135
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
adc dl, dil
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
and dl, 126
bts dx, ax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
imul esi, edx, 1
xor edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rbx]
add dl, -59 # instrumentation
movsx edi, cl
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
sbb ax, 75
add dl, dl
sub rbx, 101
mul dil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and esi, 126
cmp edx, 4
cmovnb ecx, eax
imul rdx, rdx
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
bt ax, 84
movzx ebx, dx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
cmovle rbx, rsi
or cl, bl
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 23
adc rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
