.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rbx]
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
add bl, -52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
sub rbx, 41
xor edx, eax
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 94
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
test dil, -126
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 78
xchg dl, dl
add dl, 22
add dl, -53 # instrumentation
dec dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
