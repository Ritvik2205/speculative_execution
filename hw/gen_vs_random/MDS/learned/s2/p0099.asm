.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 70
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
or dl, bl
or dil, dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor cl, 15
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
xor dil, al
or cx, 49
jmp .bb_0.2
.bb_0.2:
xor di, -83
and al, 14
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
