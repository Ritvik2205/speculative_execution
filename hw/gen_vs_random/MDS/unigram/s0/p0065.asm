.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb cx, bx
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and cl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
cmovp bx, cx
cmovnbe rsi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
not al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
or al, -24
test sil, 41
and cl, 49 # instrumentation
cmovp rsi, rcx
test si, 63
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
btc rbx, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
