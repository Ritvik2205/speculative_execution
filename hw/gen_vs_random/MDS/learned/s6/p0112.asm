.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and bl, cl
or rdx, -109
xor dl, 8
jmp .bb_0.1
.bb_0.1:
or al, -24
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor cx, -18
test dil, -51
or al, -17
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
test bl, sil
test bl, dil
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rax, 79
and sil, 89
bts bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
