.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rbx, rax
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
btr rbx, rax
xchg esi, ebx
cmovb edx, eax
cmovnp rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
setnz cl
cmovnz cx, cx
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
mul rcx
add dil, 33 # instrumentation
setnz dil
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 86
lea edx, qword ptr [rsi + rsi + 81]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
