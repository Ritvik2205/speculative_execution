.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and sil, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
xor cl, al
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cbw
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rcx]
xor dl, al
jmp .bb_0.4
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 40
sub dil, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
