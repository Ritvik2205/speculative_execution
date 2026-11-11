.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rsi]
test bl, 45
jmp .bb_0.1
.bb_0.1:
test al, sil
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add dil, 88
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
