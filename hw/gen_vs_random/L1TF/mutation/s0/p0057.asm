.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rdx + rcx]
sbb rax, 717206440
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and dl, -98
test eax, 1730342416
xchg si, bx
btc rax, rbx
and eax, -1143711697
imul ax
lea rax, qword ptr [rax + rcx]
setnbe bl
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
add al, -93 # instrumentation
xchg rbx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
