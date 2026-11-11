.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, dil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 18
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
adc bl, -76
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
neg rax
bts rbx, 36
cmovp si, di
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dil, dil
sub ax, -17837
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
add dil, 107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 94
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
imul ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
