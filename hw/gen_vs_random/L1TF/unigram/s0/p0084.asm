.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, sil
or si, 0b1000000000000000 # instrumentation
bsf si, si
btr rdi, rdx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea si, qword ptr [rbx + rsi + 54]
sub al, -47
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx], 7
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
cmovnbe bx, cx
dec dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdx]
cmp ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
inc edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
