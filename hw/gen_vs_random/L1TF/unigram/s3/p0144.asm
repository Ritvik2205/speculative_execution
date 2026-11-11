.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
setb al
cmovo bx, dx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
lea di, qword ptr [rax + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdx
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and sil, -90
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
xor cl, 89
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
setz dil
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
sub sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
