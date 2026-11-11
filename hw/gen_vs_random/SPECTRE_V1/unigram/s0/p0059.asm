.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb ecx, 23
and rcx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rcx]
cmp rdx, -19
add dl, -27 # instrumentation
sets dl
lea rdx, qword ptr [rbx]
sub bl, -6
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
bt edi, ecx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rdi]
xchg ax, si
lea rdx, qword ptr [rdx + rbx]
btc ebx, 139
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], edi
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea ecx, qword ptr [rax]
cmp bl, dl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
