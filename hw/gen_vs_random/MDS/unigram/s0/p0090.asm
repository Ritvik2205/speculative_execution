.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, rdx
cmovno rax, rbx
btc di, 233
or dil, al
and rbx, 65
xor sil, -14
test rax, 1000448998
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
bts eax, 222
jmp .bb_0.1
.bb_0.1:
and dl, 91 # instrumentation
cmovnle eax, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
bt rdx, rax
test esi, 1857129931
test rcx, rdx
or dil, 16
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and ax, cx
cmovb bx, bx
test cl, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
