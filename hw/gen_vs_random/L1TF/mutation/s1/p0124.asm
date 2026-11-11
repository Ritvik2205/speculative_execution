.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
btc rax, rbx
lea rsi, qword ptr [rdx + rcx]
setnbe bl
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
imul ax
lea rax, qword ptr [rax + rcx]
test eax, -385619864
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and eax, 1167476476
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
sbb rax, 717206440
and dl, -98
xchg si, bx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
add al, -93 # instrumentation
xchg rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
