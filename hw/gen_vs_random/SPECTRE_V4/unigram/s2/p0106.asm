.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, 114
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
cmovnp eax, edi
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
or dl, dil
cmp sil, 113
and rcx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rcx]
cmp sil, dl
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
movzx edx, cl
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add dl, -8
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
movzx ebx, dil
xor al, bl
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], dx
mov dil, al
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rdx]
sub al, 86
and bl, -119
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
cmp rcx, -121
cmovnb rcx, rdi
sub bl, -98
adc edx, -125
cmovs rcx, rax
or rcx, 47
and bl, 76
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
or eax, -1341747033
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
sbb cl, al
neg ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
