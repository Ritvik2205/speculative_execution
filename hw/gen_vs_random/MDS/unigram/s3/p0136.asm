.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
cmovnz dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
bt edi, edx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 5
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
bt edi, eax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 22
xor ax, di
or dl, -115
and cl, -109 # instrumentation
not rax
not ax
xor rbx, rsi
and rdx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
