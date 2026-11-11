.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 91
not al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test eax, -675944960
and bx, 54
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or cl, 119
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
or al, 16
test dl, 9
or bl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
