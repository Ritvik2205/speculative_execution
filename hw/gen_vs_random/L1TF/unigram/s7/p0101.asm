.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdx, rdi
lea bx, qword ptr [rbx + rdx]
btr edx, edi
sub bx, 100
btc edx, edx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
add dl, -8 # instrumentation
lea ecx, qword ptr [rbx]
sub edx, eax
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 0
add cl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
cmovs bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
mul al
test dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
