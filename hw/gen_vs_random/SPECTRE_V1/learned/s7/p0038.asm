.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
sbb sil, cl
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
cmp sil, 25
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rsi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
