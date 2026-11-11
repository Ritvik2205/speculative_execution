.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
bts edx, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rbx
cmovno eax, ecx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 49
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnz eax, esi
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
mov sil, al
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
movzx ebx, di
or bl, bl
and bl, bl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 55
add cl, -96 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
mov eax, edi
adc eax, -1127383570
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 58
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
cmovnz rdi, rsi
cmovnl ax, bx
sub al, -84
mov sil, sil
or ecx, 1 # instrumentation
add al, 49 # instrumentation
adc cl, al
sbb dl, -106
sub rbx, rbx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -4112
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and sil, dl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
sub rax, rdx
and dil, dl
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
