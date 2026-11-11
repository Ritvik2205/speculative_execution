.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and dl, 37 # instrumentation
cmovnbe cx, di
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rax], di
xor rax, -91
btc ebx, 149
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 14
not rbx
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 81
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
or dl, -31
and dl, -19 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
test sil, -96
cmovnp eax, edx
cmovb ax, bx
cmovnp ecx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
