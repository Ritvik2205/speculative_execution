.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
and bl, 87
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
or cl, al
lea cx, qword ptr [rax + rsi + 78]
add rdx, 95
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, 1
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
inc ecx
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
inc cl
or edx, 42
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
adc al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
