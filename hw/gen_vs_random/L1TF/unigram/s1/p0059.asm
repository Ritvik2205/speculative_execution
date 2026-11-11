.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
cmovnb ebx, eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
add bl, -75 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
and edi, edx
jmp .bb_0.1
.bb_0.1:
add dl, 125 # instrumentation
cmovbe rdi, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 18
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
xor ecx, 64
cmovo ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
