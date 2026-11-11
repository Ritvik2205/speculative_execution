.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 100
jmp .bb_0.1
.bb_0.1:
or dl, -97
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
or al, cl
or dl, sil
xor bl, -61
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
xor dl, -43
btr di, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and si, -121
and dl, -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
