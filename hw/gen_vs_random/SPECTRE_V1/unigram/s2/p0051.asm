.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
xor ebx, esi
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
or rax, -1571963467
sbb bl, sil
adc dx, cx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test di, 26
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
lea cx, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
