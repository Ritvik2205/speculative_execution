.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
xchg rsi, rdi
cmp ax, 7452
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
js .bb_0.2
jmp .exit_0
.bb_0.2:
setz dl
lea si, qword ptr [rcx + rsi + 17]
mov dl, bl
sub bx, 65
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
