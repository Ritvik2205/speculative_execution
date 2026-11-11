.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnl al
sbb rax, 1131444263
bt rdi, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
add sil, -61
adc dl, -12
mul al
lea ecx, qword ptr [rdi + rsi + 85]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
lea eax, qword ptr [rdx + rdx + 18]
lea ebx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
