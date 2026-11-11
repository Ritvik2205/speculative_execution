.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22368
and sil, 65
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], -20
or dl, -115
cmovs ebx, ebx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rsi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and ax, 30884
cmovno edx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
or edx, 37
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
bts rsi, rdi
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 87
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
cmovnp eax, ecx
xor ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
