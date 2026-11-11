.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -67
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
test bx, 100
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or sil, dl
jmp .bb_0.1
.bb_0.1:
jp .bb_0.2
jmp .bb_0.3
.bb_0.2:
and dil, cl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test ax, 636
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
