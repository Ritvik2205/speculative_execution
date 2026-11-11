.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 7
mul rcx
neg rax
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rbx + rdx + 32397]
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
lea rcx, qword ptr [rdi + rdx + 12]
or rax, -1571963467
cmovnz rax, rsi
lea ax, qword ptr [rcx + rsi + 73]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
