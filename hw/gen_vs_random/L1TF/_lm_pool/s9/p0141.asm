.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
cmovnle rdi, rdx
jmp .bb_0.1
.bb_0.1:
add bl, 104 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb al, dl
jmp .bb_0.3
.bb_0.3:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
xor si, -50
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
