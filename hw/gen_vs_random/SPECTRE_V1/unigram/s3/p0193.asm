.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov edi, eax
add al, -39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rbx]
or dl, 41
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea ecx, qword ptr [rdx + rcx + 78]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
bt rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
movzx eax, al
cmovp bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
