.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 50
and ebx, edi
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 55
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 40
dec bl
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
bt ax, dx
jmp .bb_0.1
.bb_0.1:
sbb edx, 16
add al, bl
lea eax, qword ptr [rbx + rsi + 59]
bts ebx, 56
or ebx, ecx
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
