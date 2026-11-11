.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rsi]
sub dl, dil
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
xchg sil, dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rdi + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
sub cl, 86
sub al, -3
add dl, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
