.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax
test eax, -1410822875
lea rsi, qword ptr [rdx + rcx]
and dl, -98
lea rax, qword ptr [rax + rcx]
setnbe bl
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
add al, -93 # instrumentation
xchg rbx, rax
btc rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
xchg si, bx
sbb rax, 717206440
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
and eax, 1167476476
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
