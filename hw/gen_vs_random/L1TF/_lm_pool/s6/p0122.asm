.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
jmp .bb_0.1
.bb_0.1:
add ax, 116
xor cl, bl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor al, sil
bts esi, 62
add esi, -124
and esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
