.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rax + rdi + 15588]
lea rdx, qword ptr [rcx + rcx]
and rdi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdi]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
js .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dl, cl
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
cmovle si, di
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
imul cx, bx, -29
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
movzx eax, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
