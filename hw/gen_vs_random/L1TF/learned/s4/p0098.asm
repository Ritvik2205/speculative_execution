.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 19
or ebx, 47
or cl, 105
xor al, bl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
mov dil, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
jl .bb_0.4
jmp .exit_0
.bb_0.4:
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
cmovle rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
