.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp bx, 45
lea ecx, qword ptr [rbx + rdx + 20]
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 63
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or ecx, edx
add dl, 109 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 53
lea rax, qword ptr [rdi + rbx]
cmovnb rcx, rcx
sub dl, 74
add rbx, 44
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
