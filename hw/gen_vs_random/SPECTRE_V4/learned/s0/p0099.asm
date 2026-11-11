.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
or al, cl
test al, dl
adc cl, bl
sub sil, -35
add dl, al
xor sil, dl
adc dil, 124
dec cl
xor ax, 15671
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
cmp al, -122
sbb al, -52
xor ax, -17712
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
