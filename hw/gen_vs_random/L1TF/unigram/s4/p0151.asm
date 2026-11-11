.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 11
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
xor ecx, 16
test bl, 45
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], 80
movsx edi, bx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rax]
sets cl
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
movzx edx, ax
lea ecx, qword ptr [rbx + rbx + 2102]
cmp al, dl
add cl, -41 # instrumentation
adc dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
