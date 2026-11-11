.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -5 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rcx]
test al, 48
add al, -94 # instrumentation
cmovnle rcx, rdx
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 35
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -76 # instrumentation
cmovnle bx, cx
not ax
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
add di, 44
add dil, bl
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
movsx rdi, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
