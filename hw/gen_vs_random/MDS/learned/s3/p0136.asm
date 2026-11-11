.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rbx
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
cmovnl ax, di
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
xor al, 77
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
or cl, 100
bt rcx, rcx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 31
or al, -48
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 23
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
and al, -37
btc rcx, rdx
test rax, 1732677821
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
