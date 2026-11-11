.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
lea ecx, qword ptr [rax]
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], 6
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
cwd
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 29
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
xor si, 7
and cx, 38
sbb esi, edi
setns sil
inc ebx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add dl, -34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
