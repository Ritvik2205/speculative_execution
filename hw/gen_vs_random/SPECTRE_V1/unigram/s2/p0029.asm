.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, cl
add dl, -34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
test rdi, -1846965753
add al, 10
sub rbx, -11
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and dil, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
sbb sil, al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
xor dil, dil
xor dil, -37
sbb esi, 16
movsx rdi, di
cmp rdi, rsi
sub dl, -48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
