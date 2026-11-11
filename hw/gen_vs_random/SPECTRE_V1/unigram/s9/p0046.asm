.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
cmovb eax, edx
setnl dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 44
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
xor eax, -105
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rdx]
adc bl, -76
and edx, edx
add dl, -96 # instrumentation
cmovo eax, eax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
