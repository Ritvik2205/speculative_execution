.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
sub dl, bl
jmp .bb_0.1
.bb_0.1:
test al, -32
cmp di, -78
jl .bb_0.2
jmp .exit_0
.bb_0.2:
sbb al, cl
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
or sil, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
