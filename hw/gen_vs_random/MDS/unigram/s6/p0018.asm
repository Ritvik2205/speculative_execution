.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 37
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 1
test bl, 65
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 93
cmovl rbx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], -86
xor dl, dl
cmovbe edx, edx
xor cl, 15
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
or cx, ax
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
