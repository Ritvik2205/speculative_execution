.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ebx, 87
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
lea bx, qword ptr [rsi]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rbx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
add al, 19 # instrumentation
setnz sil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovz edx, edi
cmovno cx, si
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rbx]
sub dil, -32
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
