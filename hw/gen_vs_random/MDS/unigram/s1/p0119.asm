.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, ebx
and cl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rcx]
or rdx, rcx
and di, ax
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and sil, 122 # instrumentation
cmovnbe esi, ecx
xor di, si
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
xor bx, 94
cmovns ecx, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and dl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
xor dl, -125
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 29
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
