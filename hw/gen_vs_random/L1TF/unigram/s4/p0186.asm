.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
sbb cl, sil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 12
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 35
add dl, -1
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
