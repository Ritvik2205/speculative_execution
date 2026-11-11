.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, si
xchg rax, rdi
lea ax, qword ptr [rax]
sbb al, 49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdi + rdi + 63323]
cmp cl, al
add eax, -371144449
sbb bl, al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
