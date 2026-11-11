.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 13
adc al, dil
lea cx, qword ptr [rax + rcx + 46]
lea edx, qword ptr [rdx + rcx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -118 # instrumentation
cmovp dx, dx
xor cl, 78
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
xchg sil, cl
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rdi
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
