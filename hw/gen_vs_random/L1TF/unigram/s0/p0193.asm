.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdi]
adc bl, 86
add dl, 22
xor dl, dl
add dl, -108 # instrumentation
cmovnle edi, edi
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
sbb rcx, 12
and rdi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
cmovs ax, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
bt rcx, rdi
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
