.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rsi, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, -125 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edi
lea ax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
cmovnle rdx, rsi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
or sil, 122
bswap rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
