.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
or al, 74
cmovl eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
or dx, 125
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
cmovle eax, edi
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
xor edx, esi
test al, 127
xor rax, -1128378406
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
