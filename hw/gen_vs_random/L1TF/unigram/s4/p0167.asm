.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
mul ebx
cmp dl, cl
and rdx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 66
cmovnle bx, bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax]
cmovb di, bx
lea ebx, qword ptr [rsi + rax + 38]
test dl, -37
cmovnz rcx, rax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
sub eax, eax
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
add bl, -22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
