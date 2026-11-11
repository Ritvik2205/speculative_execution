.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -49 # instrumentation
cmovno cx, bx
cmovnb dx, cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
cmovl rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
cmovb rbx, rdi
and dil, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 52
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
xor edx, 45
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovnbe ax, cx
and rbx, 82
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and dl, sil
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
