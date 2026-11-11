.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
mul dil
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 29 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 98
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
add rdx, rax
jmp .bb_0.2
.bb_0.2:
lea rsi, qword ptr [rax]
add rcx, rdi
or cx, 0b1000000000000000 # instrumentation
bsr di, cx
test cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
