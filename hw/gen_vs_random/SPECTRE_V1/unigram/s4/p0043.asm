.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 57
lea di, qword ptr [rdi + rax + 15575]
bt esi, edi
add dil, 118 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdx]
movzx bx, dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 13
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
lea eax, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
or dil, 98
sbb bl, bl
cmovnle cx, bx
sbb bl, dl
sbb dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
