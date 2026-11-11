.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add al, 27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rbx]
lea dx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
test ax, 636
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and dl, -109
imul edi, ebx
setbe bl
and rcx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rcx]
test rsi, -1408527332
sbb dil, dil
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
