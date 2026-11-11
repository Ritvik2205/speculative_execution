.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul al
add cl, 39 # instrumentation
setle al
or dx, dx
cmp sil, -11
movzx ebx, bx
add al, 54 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
xchg rcx, rdi
cmovnz ebx, eax
cmovnb rax, rsi
and dl, dl
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 35
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
setns al
cmovnz rsi, rax
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
