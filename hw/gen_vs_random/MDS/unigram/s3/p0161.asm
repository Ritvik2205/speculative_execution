.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 15
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 78
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovl rdi, rdx
and al, -78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
cmovns rbx, rsi
and ax, 28417
jmp .bb_0.1
.bb_0.1:
or di, 0b1000000000000000 # instrumentation
bsf di, di
test ax, 5320
cmovnl rbx, rbx
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rax
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
bts rcx, 115
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 65
bt esi, ecx
cmovno edx, edi
or rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
