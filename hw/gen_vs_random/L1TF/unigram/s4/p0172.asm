.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rsi, rbx, 43
cmp eax, -234754587
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
add bl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
cmovz rdi, rdx
jmp .bb_0.1
.bb_0.1:
and cl, 64
bts edx, 5
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
cwd
add dl, -7 # instrumentation
cwd
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
add bl, 113 # instrumentation
setbe cl
add dil, 6 # instrumentation
cmovl edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
