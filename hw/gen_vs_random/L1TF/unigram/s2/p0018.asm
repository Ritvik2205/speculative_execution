.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovnp rax, rax
add bl, 15 # instrumentation
cmovb edx, edx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rsi]
setnbe sil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
cmovz ecx, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdx]
xor al, -127
lea cx, qword ptr [rax + rdi + 46]
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
