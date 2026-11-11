.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
add dl, 47
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdx]
cmovno ax, bx
setns cl
and rbx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 46
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rax], 39
add al, 124 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdi], eax
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 22
add al, 27 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
