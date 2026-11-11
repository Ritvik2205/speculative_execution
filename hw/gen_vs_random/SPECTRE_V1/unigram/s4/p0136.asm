.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 40
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 57
add rdi, 37
cbw
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
add bl, 7 # instrumentation
cmovnl esi, ebx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
lea ecx, qword ptr [rdx + rcx + 85]
sbb rdx, 19
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 1
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 77
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
lea edi, qword ptr [rbx + rsi + 55]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
