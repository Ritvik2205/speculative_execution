.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edi
and si, -121
and al, -8
test rax, -2052112368
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
cmovle si, dx
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovns ax, cx
and cl, -71
bts rbx, rdx
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor rax, 459999114
and dil, -62
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
