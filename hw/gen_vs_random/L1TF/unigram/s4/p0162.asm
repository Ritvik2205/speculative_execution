.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ebx, 36
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
cmovle cx, ax
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 3
and rdx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
btc eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
