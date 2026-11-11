.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
lea rax, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
test rax, -1576813424
jmp .bb_0.1
.bb_0.1:
movzx rdi, al
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
test cl, 3
and si, 76
adc bl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
