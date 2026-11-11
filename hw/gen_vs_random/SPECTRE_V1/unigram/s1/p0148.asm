.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], ecx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
add cl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
add cl, -109 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 69
and rsi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rsi]
add cl, 90 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
xchg si, dx
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub rax, -679751639
lea rax, qword ptr [rax + rcx + 9]
and rax, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ecx
setnl bl
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
