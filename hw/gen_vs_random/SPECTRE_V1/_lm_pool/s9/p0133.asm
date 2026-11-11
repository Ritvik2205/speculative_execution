.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
adc bx, 39
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
lea rcx, qword ptr [rax + rbx + 61]
sbb eax, -108
mov al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
