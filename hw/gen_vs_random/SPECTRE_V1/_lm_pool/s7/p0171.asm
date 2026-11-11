.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 32
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
setno bl
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
xor bl, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, 105
sbb al, cl
test ax, -32457
adc al, -92
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
