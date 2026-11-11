.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 4
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
cmovnb di, di
cmovnl ax, di
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
cmovs ebx, edx
or rax, 1749358813
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
cmovle ebx, eax
test eax, 758789512
or al, -8
and dil, dil
bts rsi, 89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
test al, -59
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
