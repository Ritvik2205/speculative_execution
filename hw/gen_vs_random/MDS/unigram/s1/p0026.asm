.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rax
or dil, bl
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
cmovnl si, dx
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 79
cmovnbe rax, rdi
jmp .bb_0.1
.bb_0.1:
and bx, 63
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
cmovp dx, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 85
test ecx, -1843375753
btr cx, bx
or bl, dil
bt di, si
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
