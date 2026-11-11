.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 89
or al, -2
and sil, 37
xor cx, 113
lea rdi, qword ptr [rax + rsi + 79]
cmp dl, -93
inc dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
test cl, 81
xor di, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
