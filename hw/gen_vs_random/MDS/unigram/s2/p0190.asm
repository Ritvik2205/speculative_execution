.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
cmovz rsi, rdx
and rdi, rdi
cmovle di, cx
test dil, dil
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdx]
bts rax, rbx
cmovnp rdx, rsi
or cl, 30
and dil, cl
or rbx, -72
cmovns rcx, rdi
cmovns si, bx
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
