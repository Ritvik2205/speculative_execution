.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor ax, -5889
or bl, -62
or al, -61
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and sil, dil
xor dil, 8
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
