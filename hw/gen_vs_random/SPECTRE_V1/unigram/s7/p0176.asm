.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -94 # instrumentation
cmovnle rbx, rdx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
bts esi, 59
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 38
add al, -62 # instrumentation
setnb al
sbb eax, 2098460225
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add rdi, 58
test cl, -24
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], eax
add al, sil
cdq
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
