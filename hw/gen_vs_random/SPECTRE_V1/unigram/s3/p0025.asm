.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
dec rax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
add dil, 27
inc bl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rbx, rdi
setnz bl
sbb cl, -122
cmovno rdx, rax
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], bl
or dx, 14
mov sil, sil
xchg si, ax
add dl, 116 # instrumentation
cmovbe rdx, rdx
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
