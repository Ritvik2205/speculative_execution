.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
sbb sil, 19
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 41
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
xor si, ax
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rsi
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 2
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
cmovbe ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
