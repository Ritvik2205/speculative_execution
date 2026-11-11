.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
imul rbx, rdi, 25
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx]
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rax]
sub al, al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
sub dil, bl
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
add bl, -126 # instrumentation
cwd
and rax, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 66
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
adc cx, -30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
