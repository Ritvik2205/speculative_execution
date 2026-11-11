.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
bt cx, dx
add dil, al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 31
sub sil, -18
cmp bl, -114
cmp rsi, 53
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rbx]
setp cl
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 6
and rcx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
