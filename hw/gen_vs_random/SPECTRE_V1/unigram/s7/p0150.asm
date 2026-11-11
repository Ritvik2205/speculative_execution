.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
add si, 30
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rsi]
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
add dl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
sub bl, -19
xor sil, -33
test cl, -62
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
add eax, 1518653812
add al, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 30
add dil, -26 # instrumentation
cmovle rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
