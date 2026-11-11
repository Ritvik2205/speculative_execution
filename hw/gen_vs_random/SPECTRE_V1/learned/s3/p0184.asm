.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 54
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
and al, -54
cmp bl, dl
lea bx, qword ptr [rdi]
mov al, sil
test cx, -17886
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
