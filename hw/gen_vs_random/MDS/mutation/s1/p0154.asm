.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, bl
cmovz rdx, rsi
cmovz cx, bx
and rdx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rdx]
bts esi, 61
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 3
and al, 20 # instrumentation
cmovp dx, di
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and cl, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], eax
xor edx, -13
xor cl, 15
or al, -78
xor rbx, rax
cmovno rdi, rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and al, -26 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
