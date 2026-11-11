.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rdx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
movsx eax, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
cbw
movzx cx, dl
and eax, 933895314
dec bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc cl
and rax, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 3
cmovnp dx, dx
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
add bx, ax
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
