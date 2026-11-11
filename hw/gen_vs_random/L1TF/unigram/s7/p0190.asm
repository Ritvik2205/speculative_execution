.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125
dec al
imul rax, rax, 23
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
lea bx, qword ptr [rax + rcx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
adc al, 70
xchg ebx, edi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea si, qword ptr [rbx + rax]
and rcx, 1
and eax, edx
cmovnp ebx, esi
bts rbx, rdi
bt eax, 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
