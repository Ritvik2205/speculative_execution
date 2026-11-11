.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 30
neg rsi
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 56
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
xor dx, -128
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], 29
add dl, -77 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
add dl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
adc ax, -614
and rbx, rdx
sub rax, -1628299544
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], -63
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
