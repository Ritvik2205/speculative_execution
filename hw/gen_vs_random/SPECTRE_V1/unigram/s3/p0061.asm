.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
and rax, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rax]
dec rax
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
setnz sil
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 73
cmovl ecx, ebx
xor rdi, 39
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
xor dil, bl
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
