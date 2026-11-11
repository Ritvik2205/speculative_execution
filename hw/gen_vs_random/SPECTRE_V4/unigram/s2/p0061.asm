.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
test cl, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], edi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
test rdi, -795635070
add sil, 3
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ebx
and rbx, 47
adc al, -86
and rcx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rcx], 89
and cl, -128
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], -84
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
neg sil
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], eax
adc eax, -1127383570
or si, -84
btc rdx, rax
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 79
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and cl, cl
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
or dl, 71
xor rcx, -111
and rdx, 0b1111111111111 # instrumentation
add al, -84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rcx]
and al, al
movzx rbx, di
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
test al, -24
cmp edi, edi
test rbx, 1219566903
or dl, -26
and rsi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 87
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
adc al, cl
cmovnb ax, dx
bt edx, 43
test bx, 24072
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
cmovno rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
