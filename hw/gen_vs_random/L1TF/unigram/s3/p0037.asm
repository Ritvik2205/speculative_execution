.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
cwd
bt bx, 13
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
movzx dx, cl
bswap rcx
setbe sil
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
add bl, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
btc rdx, 78
and rax, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 90
add cl, -38 # instrumentation
setbe al
lea edx, qword ptr [rsi + rbx]
movzx rdx, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
