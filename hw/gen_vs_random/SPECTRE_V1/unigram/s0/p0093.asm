.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
test dil, -116
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx eax, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 17
add bl, -5 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
cmp al, al
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
