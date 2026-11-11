.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rbx]
lea cx, qword ptr [rsi + rcx]
cmp rsi, 63
and rdx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
cmovb edx, eax
test cl, sil
cmovl rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
cmovl edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdx]
sbb ax, cx
mov ecx, -1856082135
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
lea edx, qword ptr [rsi + rbx + 58]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
