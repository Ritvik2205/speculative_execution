.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -98
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
add al, -93 # instrumentation
xchg rbx, rax
setnbe bl
test eax, 1939511779
and eax, -1143711697
imul ax
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
lea rsi, qword ptr [rdx + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
sbb rax, 717206440
lea rax, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
xchg si, bx
btc rax, rbx
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
