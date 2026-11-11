.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
cmovl edi, edx
mov dl, -36
movzx ax, al
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
mul sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
test ax, 13284
cmp ax, -21455
cmovl rbx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xchg bl, cl
add al, 104 # instrumentation
sbb rax, 1890168613
cmovo rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
lea si, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
