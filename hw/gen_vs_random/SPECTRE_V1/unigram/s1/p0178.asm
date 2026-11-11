.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
btr si, 76
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
setnb al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul rcx
add dl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
add dl, -97 # instrumentation
sets dl
sub bx, 29
sub ecx, 76
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
mov sil, 16
btr rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
