.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
add dl, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
cmp bl, 123
test al, -32
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
sbb bl, al
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
