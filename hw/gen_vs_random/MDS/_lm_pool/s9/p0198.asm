.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
test al, -7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xor al, 8
and rdi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdi]
or al, -22
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
jmp .bb_0.2
.bb_0.2:
or dil, -41
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
cmovbe eax, ecx
or ax, 85
xor dil, sil
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
