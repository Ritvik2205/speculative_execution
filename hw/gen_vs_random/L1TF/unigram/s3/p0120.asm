.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 93
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dil
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], si
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
not di
not dil
xchg rcx, rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
sub rbx, 2
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rsi]
btr eax, 231
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
