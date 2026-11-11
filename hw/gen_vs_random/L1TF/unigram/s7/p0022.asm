.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdx]
and rbx, -64
xor bx, 10
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
cmovb ax, bx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
lea cx, qword ptr [rbx + rcx + 29]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 90
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], ebx
and rbx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rbx]
imul rdx, rsi
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
