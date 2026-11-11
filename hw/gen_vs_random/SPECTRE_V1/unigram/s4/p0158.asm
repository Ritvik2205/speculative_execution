.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add esi, 77
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
setl dl
cmp al, -77
and rbx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rbx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
xchg al, al
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -1185
sub bl, -6
bt eax, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
