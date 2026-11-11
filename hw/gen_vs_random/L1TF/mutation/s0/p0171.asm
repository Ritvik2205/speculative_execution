.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1167476476
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
setnbe bl
add al, -93 # instrumentation
xchg rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
lea rax, qword ptr [rax + rcx]
sbb rax, -1477844571
test eax, 1730342416
lea rsi, qword ptr [rdx + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
xchg si, bx
imul ax
and dl, -98
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
btc rax, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
