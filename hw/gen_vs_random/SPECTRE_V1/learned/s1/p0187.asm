.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -33
test sil, al
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
not dx
and bl, 87
xchg ebx, eax
and dl, -111
lea ax, qword ptr [rbx + rdi + 84]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
