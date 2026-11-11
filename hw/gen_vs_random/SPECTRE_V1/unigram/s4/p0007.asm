.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 12
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
xchg cx, si
add al, 51 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
sub dl, sil
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 59
add bl, 26 # instrumentation
sbb bl, al
cwd
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -66 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 37
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
add al, -73 # instrumentation
setnbe al
add dx, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
