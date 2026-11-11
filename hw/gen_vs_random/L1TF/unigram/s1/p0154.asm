.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
cmp rdi, rdx
add bl, 15 # instrumentation
cmovb esi, esi
xchg ax, dx
lea rcx, qword ptr [rax + rbx]
xor dl, -91
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
add cl, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], edi
sub ecx, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
