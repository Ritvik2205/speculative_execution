.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 112
dec rsi
bt edx, 80
add edx, 23
and rcx, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 70
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
not bx
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
lea rdi, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
add dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
