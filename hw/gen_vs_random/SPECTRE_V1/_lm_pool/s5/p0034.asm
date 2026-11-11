.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
xor sil, -33
sub dl, bl
add esi, 53
lea rax, qword ptr [rbx + rax]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and dx, 47
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
