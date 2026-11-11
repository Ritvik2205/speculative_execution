.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dl
add dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 76
test dl, -36
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 39
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], -27
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
sbb sil, -78
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 77
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 91
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rbx
cmp bl, -114
test dl, -7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
