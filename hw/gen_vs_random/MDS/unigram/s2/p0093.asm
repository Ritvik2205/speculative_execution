.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
xor sil, 110
cmovb rbx, rdx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdx]
and di, cx
test dil, -51
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
not cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rdi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rsi]
test rbx, 24
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
or al, 30
btc rax, 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
