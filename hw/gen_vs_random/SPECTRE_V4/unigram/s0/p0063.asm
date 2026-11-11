.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rdx, 53
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
dec edi
and dl, -104
and rdx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
mov rdi, -7956777892145474940
mov rdx, -3284511739993892328
or bl, -35
cmovp rax, rsi
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
movzx bx, dl
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 99
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sbb dil, 44
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
imul dx, cx, 86
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
bts eax, ecx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
not ax
and rbx, 98
bswap edi
cmp ebx, 80
bts rsi, 236
sbb sil, -11
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
adc ecx, 55
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
cmovle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
xor bl, -126
mov rdi, -7956777892145474940
xor ax, 20236
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
mov ebx, 51969593
cmovno esi, edx
sbb rsi, 117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
