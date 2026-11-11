.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
adc bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
mov dl, cl
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
neg cl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
cmp dl, dl
inc dil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], si
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
sub al, bl
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 76
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
mul dil
adc al, cl
neg edx
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
adc cl, sil
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
cmovnp cx, cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
movzx ax, dil
adc dil, -15
sbb edx, eax
sub dx, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 51
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
sub rdi, 105
add ax, 65
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
btr eax, 57
xor edx, 87
or dil, -104
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
sub di, 9
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
sub rdi, rdi
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
