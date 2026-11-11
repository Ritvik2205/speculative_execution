.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 57
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
adc di, 28
and rbx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rbx]
add bl, -23 # instrumentation
setnle dl
add bx, dx
xor dil, -37
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
cmovb bx, si
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
