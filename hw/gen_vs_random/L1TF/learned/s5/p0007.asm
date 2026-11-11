.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
xor dil, -42
and al, -68
and cx, 127
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
lea dx, qword ptr [rax + rcx]
add al, 93
jmp .bb_0.1
.bb_0.1:
test al, 15
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
adc sil, dil
jmp .bb_0.2
.bb_0.2:
dec al
lea rcx, qword ptr [rdx + rbx + 9]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
