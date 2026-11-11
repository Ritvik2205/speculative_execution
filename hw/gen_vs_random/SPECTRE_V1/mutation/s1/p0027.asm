.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
movzx si, al
setnb al
neg rdx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], edi
and ax, 32540
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sub ax, -17837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
