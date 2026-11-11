.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
bt edx, 38
and rdi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 7
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
or dl, dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
xchg si, di
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
cmp ebx, 81
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
add al, -122 # instrumentation
cmovnbe edx, edx
cmovz ax, dx
sub ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
