.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt di, 87
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
bts eax, ecx
and rax, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], -103
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 4
xor dl, al
lea ax, qword ptr [rax]
cmovbe rax, rsi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 40
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], -61
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
seto sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
