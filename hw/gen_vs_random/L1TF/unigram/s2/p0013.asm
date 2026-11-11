.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ebx
inc rax
movsx edx, sil
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
sub al, 9
xchg cl, al
movsx rsi, ax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], cx
add sil, 62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
sbb sil, sil
test cl, 29
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
mov ax, si
test cl, 100
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
