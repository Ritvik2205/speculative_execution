.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
cmovbe esi, eax
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 53
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 15
lea dx, qword ptr [rbx + rax]
test edx, edx
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 64
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
add bl, -127 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
xchg edx, edi
and si, si
test eax, esi
btc bx, cx
cmovl eax, edi
add dl, -53 # instrumentation
dec dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
