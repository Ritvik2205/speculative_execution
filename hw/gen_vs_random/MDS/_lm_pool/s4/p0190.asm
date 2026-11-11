.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
xor dil, 124
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
or al, sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
or bl, 100
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or bl, dil
bts ax, 22
xor al, 115
jmp .bb_0.2
.bb_0.2:
test al, bl
cmovnp rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
