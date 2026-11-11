.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
and sil, dil
test cl, bl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
xor dl, 19
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
cmp dx, 45
sub si, 83
movzx cx, bl
jmp .bb_0.1
.bb_0.1:
cmp si, 17
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
