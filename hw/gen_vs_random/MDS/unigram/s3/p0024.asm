.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and cl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmovnbe si, ax
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
cmovp rsi, rbx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and al, -115 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
cmovb rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
btc cx, 104
or al, al
test rsi, 879594088
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
not edi
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
test al, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
