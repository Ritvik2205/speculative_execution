.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, cl
and rdx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdx]
bts cx, 14
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
test bl, -114
btr rdx, 98
and bl, 45 # instrumentation
cmovnb cx, ax
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
bt rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and cl, 21 # instrumentation
cmovb bx, cx
and dl, bl
test edi, ecx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -27
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 24
bt edx, ecx
test dl, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 14
btr rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
