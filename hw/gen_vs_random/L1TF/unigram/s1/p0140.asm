.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 74
and rax, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rax], 111
and rsi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rsi]
sbb rdx, rbx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
movzx ax, al
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 77
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
add bl, -79 # instrumentation
cmovo ax, cx
xor di, cx
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
inc rax
lea esi, qword ptr [rdi + rsi + 45859]
cmovle ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
