.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
cmp si, 4
lea ax, qword ptr [rbx + rax + 75]
add dl, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdx
cmovle rcx, rbx
jmp .bb_0.1
.bb_0.1:
xor sil, dl
add dl, 85 # instrumentation
cmovp ax, ax
inc rax
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 70
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
