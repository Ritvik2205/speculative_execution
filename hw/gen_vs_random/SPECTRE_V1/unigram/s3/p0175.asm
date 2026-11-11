.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdi]
movsx rbx, cx
cmp bx, 42
test al, 34
lea di, qword ptr [rdi]
mov al, sil
add cl, 118 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
mul si
inc cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
or cx, 31
xor sil, cl
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
cmovnbe rdi, rsi
sbb al, -114
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
