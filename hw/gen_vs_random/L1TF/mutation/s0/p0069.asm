.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -23 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
sub dl, al
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
add bl, -87 # instrumentation
cmovnle rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
lea rcx, qword ptr [rax]
sbb al, -14
jmp .bb_0.1
.bb_0.1:
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax], 112
and rax, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
