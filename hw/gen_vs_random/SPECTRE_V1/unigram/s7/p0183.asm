.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 72 # instrumentation
cmovnl si, bx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], 27
setnle dl
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
cmovno di, cx
not cl
sub sil, sil
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and di, 26
cmp al, 13
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
cmovle bx, ax
test cx, -17886
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
