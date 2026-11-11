.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ecx, edx
xor ax, -24879
sbb cl, cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 65
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
lea dx, qword ptr [rax + rax]
and rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
bt rdx, rdx
add sil, sil
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add bl, 98 # instrumentation
inc bl
add dl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
