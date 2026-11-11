.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
lea rax, qword ptr [rdi + rsi + 37]
and rdi, 36
cmp rsi, rsi
xor cx, 113
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rdx]
or edx, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
