.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
add dx, -90
imul rax, rdi
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rax]
sub ax, 24441
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 68
sub ecx, eax
cmovl rax, rcx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 26
add rbx, 51
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
cmovnbe rax, rsi
sub bl, bl
sub al, dil
btr si, ax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
add edi, 11
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
adc esi, 90
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and dx, 1
test ax, -5170
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edx
add cx, 10
cmovnb eax, esi
cmovnbe ecx, edx
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bx, 74
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
sub dil, -10
cmovnb edi, ebx
adc dil, 71
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
xor dl, cl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
imul si, dx
btr bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
