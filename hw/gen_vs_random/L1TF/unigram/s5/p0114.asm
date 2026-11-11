.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], edx
mov sil, sil
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
sub rcx, -90
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
add al, -84 # instrumentation
setno dl
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
sub cl, 86
add rax, 1633593912
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
lea ebx, qword ptr [rax + rsi]
test sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
