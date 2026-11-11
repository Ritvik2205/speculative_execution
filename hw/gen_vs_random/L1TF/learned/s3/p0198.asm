.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -79
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 56
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdx]
sbb sil, cl
cmp al, -119
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
