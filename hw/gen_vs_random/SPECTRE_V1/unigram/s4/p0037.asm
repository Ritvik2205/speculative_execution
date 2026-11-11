.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
test dl, bl
lea ax, qword ptr [rdi + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
sub eax, edi
mov cl, cl
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
adc di, 85
add dl, 92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dil, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 5
lea ebx, qword ptr [rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 33
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
