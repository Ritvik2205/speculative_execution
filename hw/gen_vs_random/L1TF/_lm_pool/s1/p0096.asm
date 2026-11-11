.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
sub al, dl
add ax, -10746
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
test dil, -126
xor dil, dl
add ax, -10746
jnle .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
xor rcx, rbx
lea rdi, qword ptr [rcx + rbx]
jmp .bb_0.3
.bb_0.3:
cmp ax, 24210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
