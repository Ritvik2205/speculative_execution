.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
cmovz rbx, rsi
btr di, 109
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1827868798
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rcx]
or dl, sil
xor edx, 94
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
cmovp ebx, esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 83
bt dx, 84
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
or ax, -17790
xor al, dil
and rax, -1909598591
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
