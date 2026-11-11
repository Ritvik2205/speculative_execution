.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and edi, 23
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], di
or al, 37
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and ax, -122
xor al, 55
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
xor bl, 67
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
