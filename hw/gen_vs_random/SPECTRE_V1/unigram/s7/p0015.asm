.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -90
or cl, cl
cmovo bx, dx
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
xor sil, -33
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 9
not dl
add dl, 58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 88
xchg al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
