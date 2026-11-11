.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rcx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rcx]
add cl, bl
sbb sil, -78
mov al, dl
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
cmovno si, di
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
