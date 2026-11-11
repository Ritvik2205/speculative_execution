.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rcx, si
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rsi]
sub cl, sil
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
movzx ecx, al
xchg rcx, rdx
test edx, 573099753
xor bl, al
sbb sil, sil
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
adc ebx, 117
sub ebx, 32
mul esi
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
or cl, cl
test rdi, -1876639003
or si, 58
cmp cx, 76
and cx, 17
cmovns rcx, rdi
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
xor cl, -85
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rcx]
cmovz dx, dx
cmovp edi, eax
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 41
xor dl, cl
test edx, 573099753
and rsi, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
sub eax, -523763262
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movzx ax, bl
sbb sil, 108
add al, -26 # instrumentation
btr eax, 51
add di, -74
cmovnbe rsi, rdi
add rsi, rdx
and rax, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 22
cmovnz ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
