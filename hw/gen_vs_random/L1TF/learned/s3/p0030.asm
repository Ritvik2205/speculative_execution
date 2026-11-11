.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, cx
lea esi, qword ptr [rdx + rdx + 28]
jmp .bb_0.1
.bb_0.1:
cbw
sub bl, 15
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and sil, sil
not eax
xor ax, 30996
xor dx, 90
bts eax, 232
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
