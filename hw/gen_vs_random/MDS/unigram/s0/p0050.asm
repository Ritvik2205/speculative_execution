.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
and ax, di
cmovnb rdx, rax
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
bt edi, eax
xor cl, 93
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 52
bts rbx, 6
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
btr dx, 87
and al, dil
and al, 12 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
