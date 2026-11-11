.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
add cl, -36
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
btc si, bx
and al, cl
and rax, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rax]
sbb cl, -11
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
