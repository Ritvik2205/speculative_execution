.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
lea di, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
or al, bl
xchg bl, dl
seto al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovnle rax, rsi
test dl, 84
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
