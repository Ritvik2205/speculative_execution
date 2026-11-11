.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
movsx edi, bl
add dl, -8 # instrumentation
lea ebx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
lea rbx, qword ptr [rax + rbx + 27]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
setle cl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
cmp cl, dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
sbb bl, dil
setp dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
lea bx, qword ptr [rcx + rcx + 46]
lea bx, qword ptr [rdi + rdi + 100]
setz cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
