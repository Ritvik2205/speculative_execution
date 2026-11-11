.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dil
bts ecx, 3
xor al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
btr edi, ecx
xor dil, cl
jmp .bb_0.1
.bb_0.1:
test cl, dl
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
xor dil, -5
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
or ax, -23697
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
