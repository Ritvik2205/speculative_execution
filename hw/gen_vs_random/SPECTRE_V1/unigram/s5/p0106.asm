.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
add al, 107 # instrumentation
lea esi, qword ptr [rdx + rdi + 51]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
or si, 0b1000000000000000 # instrumentation
bsf ax, si
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rdi, rcx
xor bl, dil
not esi
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
