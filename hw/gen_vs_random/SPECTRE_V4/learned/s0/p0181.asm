.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 68
cmp eax, -1538116527
adc al, cl
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
adc dl, cl
mov dl, sil
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
test dil, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
add ecx, 99
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 111
and rdi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdi]
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
