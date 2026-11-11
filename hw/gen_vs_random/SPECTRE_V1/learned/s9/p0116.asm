.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
cmp rbx, 40
add dl, 47
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
test al, -99
sub bl, dil
lea eax, qword ptr [rax + rcx + 52]
sbb dl, bl
sbb sil, bl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
sub al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
