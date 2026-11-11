.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx bx, dl
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
test al, -82
setns dil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmp bx, -21
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
add al, -60 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
or al, bl
add al, 77 # instrumentation
sbb eax, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
