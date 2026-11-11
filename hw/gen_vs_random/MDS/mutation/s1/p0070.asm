.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
cmovnl ax, di
cmovns rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
or sil, -8
xor al, -119
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
bts rax, 149
and rdx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], eax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
cmovo cx, di
or si, 0b1000000000000000 # instrumentation
bsf di, si
bt rcx, rcx
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
or cl, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
