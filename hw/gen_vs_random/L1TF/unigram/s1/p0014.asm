.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz di, si
cmovb bx, si
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
sub ecx, ecx
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rax
or bl, 114
and rsi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
movsx edx, bl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
test ax, 13879
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
