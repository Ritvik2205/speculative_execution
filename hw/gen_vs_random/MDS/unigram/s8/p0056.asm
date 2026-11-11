.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovp di, ax
bts rbx, rax
cmovb rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and dl, 53 # instrumentation
cmovnl rdx, rdx
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
cmovns ecx, ebx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
cmovb rcx, rax
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
btr rax, 209
xor al, 55
and rdx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
