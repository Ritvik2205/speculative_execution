.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and bl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
cmovnz cx, cx
or rdx, 71
btc rax, rdi
or bl, 73
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and cl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
btc rbx, rax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 30
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
cmovnbe dx, ax
cmovs ebx, ebx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
