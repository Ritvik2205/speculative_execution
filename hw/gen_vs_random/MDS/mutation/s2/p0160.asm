.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
or rax, -689609688
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 90
xor al, 115
and cl, dl
bt rdx, rdx
xor ax, -6793
or al, -22
and cl, dl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
