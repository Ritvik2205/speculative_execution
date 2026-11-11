.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 7
lea si, qword ptr [rsi + rax]
and esi, eax
lea ecx, qword ptr [rdx + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
sbb bl, -94
cmovnz dx, ax
add bl, -41 # instrumentation
xchg dl, sil
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
xor dl, bl
bt edi, 230
setp sil
lea rdx, qword ptr [rbx + rdi + 39]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
