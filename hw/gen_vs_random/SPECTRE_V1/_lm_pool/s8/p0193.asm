.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
add cl, bl
mov cl, sil
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
test cx, -17886
sbb al, cl
sub rax, -1628299544
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
