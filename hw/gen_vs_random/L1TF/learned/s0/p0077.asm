.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 16
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
xchg ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and al, al
sbb sil, bl
test rax, -1576813424
mov dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
