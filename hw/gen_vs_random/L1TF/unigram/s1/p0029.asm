.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dil
adc rcx, 80
lea ax, qword ptr [rsi]
btr ecx, edx
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
sub ebx, 5
xor cl, 41
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rdi]
lea di, qword ptr [rcx + rdx + 20]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 95
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
