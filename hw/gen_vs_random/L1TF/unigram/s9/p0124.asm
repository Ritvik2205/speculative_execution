.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg bx, si
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 23
not rsi
mov eax, edx
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
sbb rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
setb al
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
xor cl, 89
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
adc sil, al
sbb rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
