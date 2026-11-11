.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], cl
and sil, 37
sbb dil, dil
lea di, qword ptr [rsi]
sbb eax, -1165635662
or rsi, 88
and bl, 89
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], rdx
lea esi, qword ptr [rdi + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
mul rax
sub si, -105
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
btr ecx, 69
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
