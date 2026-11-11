.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
jmp .bb_0.1
.bb_0.1:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
xor al, 16
jmp .bb_0.2
.bb_0.2:
dec ax
xchg al, bl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
xchg cl, al
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
inc rcx
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
