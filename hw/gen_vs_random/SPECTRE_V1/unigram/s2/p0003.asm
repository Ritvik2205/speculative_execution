.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ecx
lea bx, qword ptr [rax + rdi + 70]
setns dil
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 75
cmovno rsi, rax
cmovnle rdx, rdx
setnz sil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, cx
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
sub cl, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 10
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
lea bx, qword ptr [rax + rcx + 70]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
