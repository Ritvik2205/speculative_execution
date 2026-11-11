.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
add al, 10
lea rsi, qword ptr [rsi + rax]
inc dil
jmp .bb_0.1
.bb_0.1:
js .bb_0.2
jmp .bb_0.3
.bb_0.2:
sub al, 63
sub dl, 96
sbb sil, bl
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
jnle .bb_0.3
jmp .exit_0
.bb_0.3:
test al, 34
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
