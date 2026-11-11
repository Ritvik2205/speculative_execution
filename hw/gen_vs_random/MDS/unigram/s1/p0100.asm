.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
and ebx, 32
test eax, -1634766116
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdi], ebx
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
test dil, dl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
btc bx, ax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
test esi, 1857129931
cmovs rdx, rdi
and cl, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
test rdx, rbx
or ax, 30524
cmovnbe bx, si
and ebx, eax
and si, -121
bt rax, rdi
or rax, 52
btc ax, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
