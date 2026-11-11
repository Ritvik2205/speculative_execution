.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
or eax, -1161451853
and bl, cl
add cl, -127
xor al, dil
jmp .bb_0.1
.bb_0.1:
setbe al
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
cmp bl, cl
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
