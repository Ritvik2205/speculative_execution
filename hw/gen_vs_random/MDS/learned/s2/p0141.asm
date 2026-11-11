.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
test al, cl
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rax]
xor al, al
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and al, -56
or sil, -8
and si, di
or dil, -52
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bt ax, cx
or dil, -52
cmovle ebx, esi
and rcx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rcx]
cmovbe cx, ax
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
adc al, 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
