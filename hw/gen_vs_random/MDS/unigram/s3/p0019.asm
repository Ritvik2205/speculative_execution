.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
or sil, al
and dl, -75 # instrumentation
cmovp edx, edx
btc edx, ebx
and al, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], 124
or rdx, -109
and dil, -39
btr rbx, 155
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
not dx
not esi
and rax, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rax]
cmovo si, ax
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edx
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
