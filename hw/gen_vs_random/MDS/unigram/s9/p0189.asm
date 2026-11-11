.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rcx, rbx
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
test cl, al
cmovno rdx, rcx
test rax, 1207043993
and ax, cx
and rsi, rax
btc di, 233
bt rdi, 36
cmovno rcx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovnle rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
bts ecx, 184
and cl, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rbx]
btc cx, cx
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmovbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
