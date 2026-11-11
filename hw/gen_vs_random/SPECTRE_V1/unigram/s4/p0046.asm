.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ebx, 13
neg eax
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
add rsi, -60
add bl, 73 # instrumentation
mov rsi, 90
cmovno bx, ax
xor bl, -38
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setnp bl
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
sub sil, al
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], bx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
