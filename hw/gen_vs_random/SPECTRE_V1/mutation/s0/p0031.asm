.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -53 # instrumentation
sbb bl, dl
imul eax
sbb al, 118
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
xor al, 78
jmp .bb_0.2
.bb_0.2:
add al, -72
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, -32457
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
