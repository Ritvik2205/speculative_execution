.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and rcx, -63
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rax, -731384280
or sil, dil
and dil, bl
bts rsi, 221
or sil, cl
or sil, -78
jmp .bb_0.1
.bb_0.1:
bts rbx, 115
or al, -61
xor al, 8
or dil, al
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
xor dl, -43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
