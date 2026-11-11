.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, ax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], cl
and al, -68
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
and cl, al
cmp bl, al
test si, 88
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor eax, -603819833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
