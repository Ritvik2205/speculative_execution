.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 40 # instrumentation
btc rdi, rdi
xor sil, 64
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
test ebx, 29
not cl
xor al, 16
jmp .bb_0.3
.bb_0.3:
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sbb sil, bl
and bx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
