.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
setnbe cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 32
test bx, di
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
sub dl, dl
sub bl, cl
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
neg rsi
mov bl, bl
sub rbx, 37
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
