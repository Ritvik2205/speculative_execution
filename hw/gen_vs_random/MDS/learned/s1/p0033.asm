.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
cmovnle ecx, esi
and si, dx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 72
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
sub edi, 7
jmp .bb_0.1
.bb_0.1:
add ebx, edx
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
sbb eax, 77
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
cmovnbe dx, si
or cx, 0b1000000000000000 # instrumentation
bsf di, cx
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rsi
and al, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
