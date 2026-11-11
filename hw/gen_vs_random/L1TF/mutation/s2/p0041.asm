.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, -36
movzx ax, al
mul sil
cmp ax, -21455
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 13879
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
add cl, 65 # instrumentation
cmovo rcx, rbx
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmovl di, bx
lea dx, qword ptr [rax + rax]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 3
add cl, -98 # instrumentation
setp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
