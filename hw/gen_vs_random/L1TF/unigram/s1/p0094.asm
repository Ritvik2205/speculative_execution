.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
btr dx, 35
lea rdi, qword ptr [rcx]
add bl, -93
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
xor dl, -82
dec cx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rax]
xor ax, di
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
setp dl
cmovle dx, dx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
