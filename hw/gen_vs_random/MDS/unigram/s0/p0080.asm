.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rbx, rax
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
and al, -56 # instrumentation
cmovl rbx, rdi
bt rax, 15
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovnb dx, cx
cmovnbe ax, si
or cl, dil
btc rcx, rdx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 55
btc cx, 104
cmovs edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], bx
xor edx, edx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 87
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
