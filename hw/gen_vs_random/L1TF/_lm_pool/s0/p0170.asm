.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, di
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
cmp rdi, 62
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
