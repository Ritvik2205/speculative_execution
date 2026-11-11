.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
adc rcx, 75
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 39
add dl, -93 # instrumentation
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
cmp rax, rax
btc eax, eax
bt ebx, 79
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 16
cmovp ebx, esi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
lea ebx, qword ptr [rcx + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
