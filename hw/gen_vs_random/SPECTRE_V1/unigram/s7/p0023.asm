.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi + rax]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 55
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], bl
cmovbe ebx, eax
xor edx, 30
sbb bl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 85
sbb dil, -93
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rdx
imul rax, rcx
and esi, 77
lea dx, qword ptr [rax + rdi + 74]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
