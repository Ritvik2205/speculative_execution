.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, 53
neg sil
inc bx
or si, di
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], di
sub ax, dx
test rcx, -2118888343
cmovnb eax, ecx
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
xor dil, cl
add sil, sil
or dil, dil
or al, 95
bt bx, 4
cmp sil, bl
test dx, 70
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], cl
add bl, -72
adc cl, dl
and rsi, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rsi]
imul bx, ax, 97
or edx, eax
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rdx]
mov rdx, 47
imul dx
cmovle rcx, rsi
imul rdi
or sil, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
sbb al, 32
xchg sil, dil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
sbb al, -47
imul edi, edx
and cx, 17
test dil, al
movzx rax, dil
sub al, 50
xchg eax, ebx
or bl, 22
cmovp di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
