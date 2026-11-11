.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rsi + rdx + 64]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
cmovno rbx, rsi
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 126
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
btr edx, 166
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and eax, 933895314
add al, 28 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
or rbx, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
