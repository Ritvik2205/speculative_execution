.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdi + rbx + 62931]
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
setns dl
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 14
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], -100
add bl, cl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
inc dl
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
setnl dl
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
cmovnbe esi, edx
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
