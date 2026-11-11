.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], eax
add dil, -117 # instrumentation
lea rcx, qword ptr [rdi]
and bl, 125
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 86
lea ecx, qword ptr [rdx + rbx]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dil
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
lea eax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
xchg ax, di
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 73
lea esi, qword ptr [rsi]
xor al, -127
bt rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
