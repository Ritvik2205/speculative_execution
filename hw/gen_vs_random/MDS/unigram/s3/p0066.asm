.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rsi, 146
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 79
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
xor rcx, 71
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ecx
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rax
test cl, 62
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
bts rdi, 130
cmovl rbx, rcx
xor al, 99
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test bl, -14
and rsi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rsi]
not eax
bts ax, 22
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
or al, -17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
