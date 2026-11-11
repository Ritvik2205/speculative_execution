.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], 59
cmovnbe bx, bx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], ecx
sbb dl, -23
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
setns cl
cmp ax, 23607
xor sil, 1
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 79
xor rsi, 73
add bl, 126 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
setnz dl
and rdi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
