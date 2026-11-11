.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
bts bx, 223
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
sbb dil, 10
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 85
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 9
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 67
cmp dil, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
