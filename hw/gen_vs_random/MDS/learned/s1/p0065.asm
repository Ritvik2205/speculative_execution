.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 95
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
not bl
btr cx, dx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
btr rsi, 73
cmovs edx, esi
cmovs ebx, esi
or rbx, -124
xor bx, ax
cmp ax, 10
and rdi, 28
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
cmovo rcx, rsi
and sil, sil
and dl, al
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], 8
or rax, -2043376621
or ax, 28091
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
