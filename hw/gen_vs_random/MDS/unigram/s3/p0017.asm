.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and bl, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
xor rsi, -117
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor sil, sil
jmp .bb_0.1
.bb_0.1:
btc edi, 230
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], di
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
and cl, -127 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovnz cx, si
and bl, 65 # instrumentation
cmovnbe si, cx
cmovb rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
