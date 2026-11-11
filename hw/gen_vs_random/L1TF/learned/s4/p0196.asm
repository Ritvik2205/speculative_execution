.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
adc dl, -12
xor al, sil
lea rdx, qword ptr [rdi + rax + 4]
add bl, al
cmp dil, 74
dec al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 3
mov dil, bl
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
