.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
setle dl
btc cx, dx
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
add dx, si
btc bx, cx
setnb sil
jmp .bb_0.2
.bb_0.2:
btc cx, 54
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
or ebx, edx
sub cl, dil
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmovz ecx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
