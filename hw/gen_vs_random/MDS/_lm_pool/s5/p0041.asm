.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, bx
and bl, cl
xor cl, al
and al, -8
btr rax, 29
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
not bl
xor rdx, -59
and cl, 79
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and sil, sil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
