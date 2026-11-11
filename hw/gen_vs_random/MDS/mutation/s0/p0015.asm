.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
or sil, -8
xor al, -15
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
cmovnl ax, di
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
bt rcx, rcx
bts rax, 117
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
or cl, 100
cmovo cx, di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
or si, 0b1000000000000000 # instrumentation
bsf di, si
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
