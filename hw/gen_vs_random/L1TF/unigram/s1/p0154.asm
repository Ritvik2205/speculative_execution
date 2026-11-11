.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
btc edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
sub dl, -78
cmovnbe ecx, edx
adc al, 80
cmovnl rsi, rbx
xor dl, 19
and dl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
cmovnp rsi, rdi
xchg edi, ecx
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
lea eax, qword ptr [rdx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
