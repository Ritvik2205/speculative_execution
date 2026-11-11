.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
btr edx, edx
test sil, bl
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and dx, 3
and cl, 8 # instrumentation
cmovnl rax, rdi
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
test bl, al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
and dl, dl
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
xor dil, -5
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 15
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 7
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and dl, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
