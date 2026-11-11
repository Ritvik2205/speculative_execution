.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
xor dil, -3
test dil, 46
bt si, dx
or al, -75
or dil, -41
test cl, dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
xor rdi, -9
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
test dl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
