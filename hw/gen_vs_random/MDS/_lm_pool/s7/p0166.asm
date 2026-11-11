.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and bx, 36
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
xor cl, 24
or cl, -77
xor sil, bl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 47
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
bts eax, 222
and dil, -62
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and bx, 79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
