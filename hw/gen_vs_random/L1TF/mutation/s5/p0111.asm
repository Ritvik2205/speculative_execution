.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
btr eax, 47
xchg rcx, rax
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
setp dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
dec edi
cbw
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
add bl, -77 # instrumentation
cmovns dx, ax
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
or al, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
