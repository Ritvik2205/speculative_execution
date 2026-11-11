.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle dx, dx
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
btc dx, di
add bl, 48 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 18
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -98
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 21177
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
setnle cl
test rdi, 33
cmp dx, 81
setns cl
test al, -70
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
xor bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
