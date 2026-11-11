.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, -50
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test ax, 7679
mov dl, 121
mul sil
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
cmp ax, 24210
cmovl edi, edx
movzx ax, al
cmovl rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovo rdx, rsi
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
xchg bl, cl
lea si, qword ptr [rdi + rcx]
add al, 104 # instrumentation
sbb rax, 1890168613
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
