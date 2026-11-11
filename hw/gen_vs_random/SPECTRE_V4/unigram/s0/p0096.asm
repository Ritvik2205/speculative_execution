.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
bt esi, 89
mov ecx, ebx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], dx
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 43
xchg dl, al
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
cmovno rsi, rax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 118
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
adc si, -110
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
test al, dl
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
sbb cx, 106
sbb al, 70
sbb rdi, 86
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 80
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 0
adc eax, -983562873
add rdx, 92
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
cmp cl, al
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
btc edx, 108
test cx, di
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rax]
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
adc rax, rbx
not dil
and rdx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdx]
cmp bx, dx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
