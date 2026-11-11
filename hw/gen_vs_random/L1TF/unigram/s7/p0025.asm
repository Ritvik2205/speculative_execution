.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
lea edi, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
or sil, -44
add al, 112 # instrumentation
cmovnle ecx, ebx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
add dl, 85 # instrumentation
cmovp cx, cx
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
cmovo rax, rcx
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
