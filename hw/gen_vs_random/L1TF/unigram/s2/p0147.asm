.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -87
bt di, 3
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
cmovp edi, eax
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
lea di, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
cmovnbe ax, di
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
cmp di, -98
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
