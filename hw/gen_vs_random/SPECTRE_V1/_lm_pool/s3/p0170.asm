.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
lea cx, qword ptr [rcx + rbx]
setz cl
and rdi, rcx
mov bl, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
sbb sil, -78
cmp dil, bl
lea cx, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
