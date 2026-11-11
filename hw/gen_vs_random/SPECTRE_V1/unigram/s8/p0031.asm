.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], 62
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 59
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
sbb bl, dl
neg dl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
loop .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
bt ax, dx
lea eax, qword ptr [rax + rdx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rbx
and rbx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rbx]
add ax, 8031
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
add al, 22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
