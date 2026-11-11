.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 56
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 106
lea rsi, qword ptr [rbx]
cmovs si, ax
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
lea si, qword ptr [rsi + rcx + 86]
adc rbx, 96
sub dx, 34
lea ecx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
lea ecx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], ax
add dil, 88
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
