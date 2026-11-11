.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 7
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
sbb cl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
sets al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -51 # instrumentation
cmovno rax, rbx
inc dl
test bx, 70
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
cmovs rdi, rdi
or ebx, -124
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], -501175648
sbb bl, -41
add ax, 8031
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
