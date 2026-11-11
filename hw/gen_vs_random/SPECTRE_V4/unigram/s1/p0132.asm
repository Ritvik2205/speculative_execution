.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb ax, cx
cmovl rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 84
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rax
add rax, rsi
and rdx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdx]
imul dx, bx
mov ebx, 51969593
bt edi, ecx
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
not rcx
xchg rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and edx, 30
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
sbb ebx, eax
mul cl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rax
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 61
cmp dil, -92
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and sil, dil
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 94
cmovl ecx, edx
or di, 122
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rsi
imul rsi, rcx, 74
add dl, 109
cmp al, bl
cmovnb si, si
add rbx, 86
dec sil
sbb cx, 29
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
movsx ebx, dx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rdx, rbx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 67
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
mov cl, bl
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
