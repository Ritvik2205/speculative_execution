.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
test al, al
cmovp eax, edi
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
or rsi, 100
test al, 127
or cl, -36
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
or eax, -1777347252
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and al, 17 # instrumentation
cmovnp edx, ebx
and sil, dil
cmovnz si, si
test dil, bl
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
