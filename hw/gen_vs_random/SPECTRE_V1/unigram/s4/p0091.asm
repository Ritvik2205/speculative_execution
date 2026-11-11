.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -77
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
sub al, al
neg rdx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb ecx, ebx
and dil, sil
sbb al, dil
setz sil
xchg ecx, edi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 90
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
