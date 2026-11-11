.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 23
setnz dil
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
sub esi, -120
add dil, 20 # instrumentation
cmovnbe rax, rdi
xor rdx, 94
and rax, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 25
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rax, rax
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
cmovnb dx, si
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovno rdx, rdi
lea eax, qword ptr [rsi]
xchg ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
