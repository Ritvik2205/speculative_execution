.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rbx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
lea cx, qword ptr [rax + rsi + 10]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
jmp .bb_0.3
.bb_0.3:
cmp al, 56
adc cl, -34
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
