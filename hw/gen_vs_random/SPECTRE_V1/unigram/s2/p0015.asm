.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add eax, -1265007362
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
lea rdx, qword ptr [rsi]
add rax, 1503210561
xor dx, 71
mov cl, al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, 59
lea edx, qword ptr [rcx + rdx + 57]
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 74
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
