.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
xor si, -50
mov dl, 121
movzx ax, al
mul sil
cmp ax, -31327
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 13879
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 7
or edi, edx
bt rcx, 38
xchg dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
xor rax, -2072052278
lea bx, qword ptr [rdi]
or sil, -44
add dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
