.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
test edx, -372470678
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 23
test al, bl
and ax, 27170
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
bt cx, ax
or cl, sil
or sil, -49
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
test cl, -123
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
