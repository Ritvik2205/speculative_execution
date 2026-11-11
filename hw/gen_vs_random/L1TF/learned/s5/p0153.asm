.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
add dl, -1
and dl, cl
test dil, -126
xor sil, 64
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sbb sil, dl
or sil, -44
or di, 0b1000000000000000 # instrumentation
bsf si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
