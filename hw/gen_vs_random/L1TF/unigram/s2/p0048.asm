.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 107 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 69
cwd
sbb dil, 58
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 66
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
not dl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
cmovns eax, ecx
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
setnl dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
setbe dl
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
