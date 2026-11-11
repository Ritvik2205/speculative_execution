.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul esi
sub sil, -99
sbb cl, -11
cmovp ebx, edx
cmovnp rax, rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rbx]
add dl, 91 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
sub dx, si
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rax
sbb dl, bl
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
