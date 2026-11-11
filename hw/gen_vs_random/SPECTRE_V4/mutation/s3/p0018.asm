.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -84 # instrumentation
cmovb dx, si
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dil
bt rcx, 189
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
movsx ebx, cx
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
or rdx, 1
cmovbe rsi, rcx
btr si, dx
btr bx, 42
adc bl, al
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
imul bl
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
mul al
btr rbx, rdi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
cmovnz eax, edi
cmovnp eax, edi
movsx cx, dil
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
sub al, 59
mov dil, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sbb al, 43
mov sil, dil
add bl, al
imul sil
and ebx, -122
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz edx, edi
add rcx, rbx
adc rdx, -90
or al, al
btr si, 114
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test cx, 7280
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
movsx ebx, ax
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
