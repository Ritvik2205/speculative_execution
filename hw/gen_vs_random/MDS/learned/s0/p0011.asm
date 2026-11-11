.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -18
xor ax, 2053
xor rbx, -51
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
btc rbx, rdx
cmp rdx, rdx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
xchg edi, esi
or dl, bl
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and dl, 60 # instrumentation
cmovno edi, edi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 81
jmp .bb_0.2
.bb_0.2:
btc rdx, 138
and al, -115 # instrumentation
cmovl bx, ax
and ax, dx
cmovbe ax, si
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
