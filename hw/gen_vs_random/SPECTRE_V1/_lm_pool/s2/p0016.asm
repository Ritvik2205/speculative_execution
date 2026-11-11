.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, cl
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
jns .bb_0.2
jmp .bb_0.3
.bb_0.2:
xchg rdx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rdx
bts dx, 207
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
adc dl, -49
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
jns .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
add dil, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
