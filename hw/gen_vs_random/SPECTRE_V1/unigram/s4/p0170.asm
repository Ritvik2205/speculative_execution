.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 98
test di, ax
and rsi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
cmp ebx, -33
lea rbx, qword ptr [rdx + rdx + 13]
imul al
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
cmovbe rsi, rdx
sub cl, dl
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
xor dl, 71
imul edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
