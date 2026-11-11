.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 6
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
lea cx, qword ptr [rbx]
xor ecx, esi
movzx rdx, dil
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1315047763
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -21
sub bl, 15
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 82
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
cmp rsi, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
