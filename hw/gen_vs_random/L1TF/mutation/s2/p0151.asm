.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -93 # instrumentation
xchg rbx, rax
lea rsi, qword ptr [rdx + rcx]
lea rax, qword ptr [rax + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and eax, 1167476476
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
and dl, -98
sbb rax, 717206440
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
setnbe bl
test eax, 1939511779
imul ax
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
xchg si, bx
and rsi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rsi]
btc rax, rbx
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rax]
xor bl, cl
imul cx, di, 19
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
lea si, qword ptr [rdi]
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
