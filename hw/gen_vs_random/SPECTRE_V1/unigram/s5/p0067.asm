.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rsi, rax
lea eax, qword ptr [rsi + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
setns cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
xor bl, -38
xor bl, bl
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
xor sil, -33
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
add sil, -94 # instrumentation
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
