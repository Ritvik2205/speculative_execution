.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and dil, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
cmovz edi, edx
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
cmovs bx, si
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 42
xor cl, 122
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovz rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
xor dl, dl
bt rdi, rax
cmovnl rax, rax
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
bts cx, si
or bl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
