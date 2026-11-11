.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx cx, bl
add ax, -13169
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
cmp ax, -15031
test ax, 23760
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
add dl, -10 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb bl, al
movsx eax, sil
imul ecx
sub bl, 17
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sub rax, -701741274
movsx ecx, ax
and rdi, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdi]
sub ebx, eax
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
or dl, dil
and rax, 33
and rsi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 1229240443
and rax, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdi]
bt edx, eax
movzx edx, al
cmp al, bl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], dx
bts edi, 167
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
xchg bl, dl
imul rdi
mov al, 23
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
add cl, 122 # instrumentation
cmovz rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
imul cl
mul dl
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
