.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
xor rsi, 67
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
lea ebx, qword ptr [rbx]
imul dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bt bx, bx
cmp bx, di
lea rsi, qword ptr [rsi + rcx]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
mov al, bl
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
