.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
sbb sil, al
cwde
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 85
and al, -68
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
