.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], 12
test cl, -31
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
not al
cmovb di, cx
xor bl, 77
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
