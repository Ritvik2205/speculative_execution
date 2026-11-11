.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
bt ax, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 93
add bl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
add edx, 56
setb cl
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 36
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
dec ax
and eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
or ebx, eax
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
