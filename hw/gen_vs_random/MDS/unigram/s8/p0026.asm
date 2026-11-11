.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz rdi, rbx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
cmovl ecx, esi
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
bt di, ax
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
or sil, -49
xor cl, 15
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 27
or edi, esi
and dl, 48 # instrumentation
cmovz rcx, rdx
test rdi, 24
btc si, di
and rdx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdx]
not sil
and ax, dx
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
cmovz esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
