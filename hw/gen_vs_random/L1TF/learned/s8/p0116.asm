.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
and rax, 1163013815
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 48
imul al
and al, -68
jmp .bb_0.2
.bb_0.2:
setle cl
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
jmp .bb_0.5
.bb_0.5:
or cx, 0b1000000000000000 # instrumentation
bsf ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
