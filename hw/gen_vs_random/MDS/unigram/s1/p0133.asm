.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, cx
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and cl, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
or cl, 7
and rdx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor ebx, 42
xor rax, rbx
cmovz rdx, rsi
test dl, -85
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
test al, sil
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
cmovle rsi, rdi
btr esi, 74
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
