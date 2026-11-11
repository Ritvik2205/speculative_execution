.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdx
setp dl
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
or sil, -44
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 76
add dil, bl
and dl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor al, bl
sbb al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
