.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
xor al, 9
test cl, 101
xor al, 8
or sil, bl
and eax, 33
btr ax, di
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, 68
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or al, bl
or al, dl
test ax, -20900
and cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
