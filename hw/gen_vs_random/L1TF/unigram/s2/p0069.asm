.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rbx
bt rcx, rbx
mul edi
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 5
setnz dl
add bl, 89 # instrumentation
sbb al, bl
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
lea esi, qword ptr [rbx]
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
