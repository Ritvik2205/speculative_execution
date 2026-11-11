.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dl
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
lea ax, qword ptr [rcx + rdi + 34958]
movsx rdx, ax
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
bts rax, 45
inc eax
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
add bx, -65
cmovbe rcx, rsi
sub dl, bl
cmp rbx, 17
xchg cl, cl
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
