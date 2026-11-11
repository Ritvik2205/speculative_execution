.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rax + rdi + 72]
mov dil, 63
cmp al, -119
jmp .bb_0.2
.bb_0.2:
test si, cx
lea di, qword ptr [rbx]
btr bx, 104
and rax, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
