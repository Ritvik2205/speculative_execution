.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, di
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
cmovb edx, edx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], -86
not ax
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
imul rbx
lea ebx, qword ptr [rsi]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
setle bl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
