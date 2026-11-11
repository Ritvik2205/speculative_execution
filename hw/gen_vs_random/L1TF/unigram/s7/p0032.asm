.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
xor rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
sub edx, -33
add edi, 99
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], eax
add bl, 68
add cl, 104 # instrumentation
sbb rcx, 64
add rsi, 97
cmovnle ax, ax
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 43
imul rbx, rcx, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
