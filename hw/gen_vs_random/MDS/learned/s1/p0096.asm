.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and di, dx
btr di, 199
or cl, sil
or bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
cmovnle edx, esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -109
cmovs edx, ecx
and dil, 93
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
cmovnle ax, bx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 66
and dl, 84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
cmovo si, dx
or rax, 1749358813
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
