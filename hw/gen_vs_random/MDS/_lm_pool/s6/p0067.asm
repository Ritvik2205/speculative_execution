.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
xor al, 55
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
or cl, 119
xor al, 8
and dl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
test dl, -85
xor edx, -13
xor cl, 83
and cx, -8
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rax, -1931765367
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
