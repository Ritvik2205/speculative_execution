.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
sub ecx, 75
sbb bx, 14
cmp dl, sil
cmovl rcx, rdx
and rsi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
bswap rdx
test bl, 84
imul rax, rax
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
setnp dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
