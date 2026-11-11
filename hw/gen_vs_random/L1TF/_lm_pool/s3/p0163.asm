.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
lea edx, qword ptr [rax]
not bl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 87
and rbx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rbx]
xor al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
btc di, bx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
