.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 65
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rdi]
test rbx, 10
or rax, rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and dl, -73
test sil, 41
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -45
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or esi, -110
btc si, bx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and bl, 121 # instrumentation
bt rax, 59
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
cmovnle edi, eax
and rax, -1701787862
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
