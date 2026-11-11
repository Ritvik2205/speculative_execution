.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cx, -18
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
test cl, 91
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or al, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -29
and sil, -56
jmp .bb_0.1
.bb_0.1:
or rbx, -77
jmp .bb_0.2
.bb_0.2:
and ax, 27170
or sil, -78
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rax], esi
jmp .bb_0.4
.bb_0.4:
xor di, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
