.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
sbb bl, dl
imul eax
sbb al, -114
and rax, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], esi
sub al, cl
imul rdx
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -94 # instrumentation
or bl, al
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
and al, bl
adc cl, -19
xor rbx, 50
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], bx
sub al, -89
xor al, -42
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
mov dl, bl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rax], bx
add al, -84 # instrumentation
lea eax, qword ptr [rbx + rbx + 39392]
cmovl ebx, ecx
sbb bl, cl
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
