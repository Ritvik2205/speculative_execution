.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
cmp dl, sil
bts rdx, 212
setz cl
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
movsx ebx, bl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
imul eax
cmovle cx, dx
cmovnle rdi, rdx
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
