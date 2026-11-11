.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
and bl, bl
xor sil, -15
and rcx, -63
xor cl, 98
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and dil, bl
or al, -61
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], ax
xor rcx, -2
and cl, cl
btc cx, 115
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
jmp .bb_0.1
.bb_0.1:
xor al, dl
or rax, -1523798580
and rbx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
