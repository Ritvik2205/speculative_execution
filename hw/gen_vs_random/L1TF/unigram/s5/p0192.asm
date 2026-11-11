.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
cmovnl rdi, rax
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and dil, sil
cmovb ax, cx
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 6
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 77
inc ecx
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 52
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
