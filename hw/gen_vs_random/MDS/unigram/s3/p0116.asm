.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ax, dx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
and dl, 125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
or ebx, -104
cmovle rax, rax
and rdx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], bx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 1
or dil, 16
jmp .bb_0.1
.bb_0.1:
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and cl, 7 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
bts ecx, 184
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 9
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rbx
xor rax, -843636050
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
