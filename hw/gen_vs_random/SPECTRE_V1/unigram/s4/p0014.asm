.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdi]
dec di
inc si
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
xor sil, -33
add bl, -5 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -69
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 57
btr dx, 55
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rcx
imul edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
