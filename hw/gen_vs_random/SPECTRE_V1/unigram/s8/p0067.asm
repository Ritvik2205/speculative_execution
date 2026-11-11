.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdi, rdi
add al, 123 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and si, dx
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
cmovl edx, edx
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp edi, 77
neg edi
xor bl, -38
setno bl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], -120
imul dx
bts rdx, 212
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
