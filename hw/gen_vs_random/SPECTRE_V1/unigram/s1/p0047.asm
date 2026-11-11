.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not rbx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
sets dl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 34
sub dl, -29
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 54
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 44
cmovbe rdx, rax
dec dl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
