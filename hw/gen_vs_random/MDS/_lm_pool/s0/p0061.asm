.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, cl
bts rdi, rdx
xor rax, -843636050
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dil, cl
jmp .bb_0.1
.bb_0.1:
or cl, 6
xor al, sil
xor dl, dil
test dil, cl
and al, cl
test sil, dil
cmovle cx, ax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
bt si, ax
xor rax, -843636050
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
