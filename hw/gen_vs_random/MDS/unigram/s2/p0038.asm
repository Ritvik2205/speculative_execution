.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, ebx
and sil, -126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
cmovnp ecx, edi
or dil, dl
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], -30
cmovnp rdi, rax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
btc si, 43
and rcx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], cx
jmp .bb_0.1
.bb_0.1:
and dx, 60
xor dl, al
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
cmovp bx, si
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
test al, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and dl, 84 # instrumentation
cmovl rdi, rcx
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 12
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
