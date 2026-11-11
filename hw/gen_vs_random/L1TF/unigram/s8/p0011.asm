.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
cmp rcx, rsi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 48
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rcx
cmovnbe edx, eax
cmovnp bx, si
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
sbb cl, al
jmp .bb_0.1
.bb_0.1:
inc al
and bl, 89
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
setb al
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 29
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
