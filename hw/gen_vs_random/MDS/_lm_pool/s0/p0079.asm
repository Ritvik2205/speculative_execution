.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -62
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
xor sil, 94
xor dil, -70
not cl
or sil, -49
and cl, dl
and dl, dl
xor rbx, 89
test bl, -114
btr dx, si
or cl, -77
btr ax, 193
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
test dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
