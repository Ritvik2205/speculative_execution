.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, cl
or al, sil
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], 43
cmovnb si, bx
xor dl, cl
or sil, dil
test edx, ecx
and rcx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rcx]
cmovnbe rcx, rdi
xor rsi, -117
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 2
or cl, al
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rcx
and rax, -636362975
test ebx, -961564216
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
