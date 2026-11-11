.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdx]
or rbx, rax
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor al, 99
test cl, 54
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 88
and al, 54 # instrumentation
cmovnp bx, bx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
and ecx, -104
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
cmovp dx, di
test ax, -20900
and dil, -99 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
