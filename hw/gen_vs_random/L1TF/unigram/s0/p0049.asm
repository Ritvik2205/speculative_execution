.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ax, ax
add cl, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
btc ecx, ecx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
cmovle rsi, rsi
setbe cl
or ax, 0b1000000000000000 # instrumentation
bsr bx, ax
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
cmp di, cx
xchg edx, edi
sbb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
xor al, 89
setz dl
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
