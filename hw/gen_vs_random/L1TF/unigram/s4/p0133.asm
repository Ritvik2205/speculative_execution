.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 97 # instrumentation
cmovnbe eax, edx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
sbb rax, rdx
xor bl, 38
test rbx, rcx
jmp .bb_0.1
.bb_0.1:
add bl, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 52
and eax, edx
lea edi, qword ptr [rsi + rdi]
mov rcx, rax
xchg dx, di
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
movsx ecx, dil
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
