.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
sbb bl, -88
xor bl, dil
add al, -117 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], ecx
dec cx
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and dil, dl
test cl, 67
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
cmp sil, -11
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 28
and dil, -82
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 57
or dx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
