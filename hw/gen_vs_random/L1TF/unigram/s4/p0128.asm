.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ecx
sbb al, 61
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add dl, 85 # instrumentation
cmovp dx, dx
sbb ax, bx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
lea rcx, qword ptr [rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 28
btr ebx, esi
cbw
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
