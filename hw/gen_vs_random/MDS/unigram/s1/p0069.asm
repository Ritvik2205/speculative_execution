.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -56 # instrumentation
cmovl rax, rcx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovp eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
bts rbx, 69
cmovnb rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 46
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 100
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
cmovs esi, eax
cmovno edx, ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 12
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
