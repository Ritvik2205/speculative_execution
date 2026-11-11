.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], esi
sub rdi, 16
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
xor si, ax
cmovnl rax, rsi
bt si, 14
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 12
test dl, 19
and si, cx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
bts edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
