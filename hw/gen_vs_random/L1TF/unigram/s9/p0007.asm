.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rsi]
add al, bl
sbb dl, -26
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], -62
cmovnbe rax, rbx
xchg bl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], cx
mov eax, 2
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
or al, al
sbb cl, -11
setns al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 88
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
