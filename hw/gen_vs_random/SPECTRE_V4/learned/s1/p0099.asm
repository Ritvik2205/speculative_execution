.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
movzx cx, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -107
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovnl ebx, ecx
add al, sil
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
dec bl
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
mov rsi, 50
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 31
and rdi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edi
imul dl
cmp cl, 30
add dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
