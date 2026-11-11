.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -34 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
lea ecx, qword ptr [rbx + rax + 37]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
sub rcx, -121
or rbx, 18
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
add eax, -1
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], 106
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
