.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
setb al
sbb dil, al
test cl, al
sbb bl, -88
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 12
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
sbb bl, -88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
