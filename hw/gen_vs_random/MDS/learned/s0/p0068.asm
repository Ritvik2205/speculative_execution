.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, al
btr ax, si
test cl, 73
or al, 24
bts rsi, rax
and al, 87
not cl
and sil, bl
xor dil, al
xor al, bl
or sil, cl
or cl, dil
test cl, -18
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
