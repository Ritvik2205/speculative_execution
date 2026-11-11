.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 96
seto bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and bl, bl
btr ax, 34
bt bx, 70
cmovb si, dx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
lea rdi, qword ptr [rdx + rdi + 32]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rsi
and dx, 97
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
