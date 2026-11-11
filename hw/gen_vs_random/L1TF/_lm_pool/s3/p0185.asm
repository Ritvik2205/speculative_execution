.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 30996
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 13
setb sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
btc bx, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
cmp sil, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
