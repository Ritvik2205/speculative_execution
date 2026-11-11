.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 60
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 66
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 9
add bl, 106 # instrumentation
cmovs ecx, eax
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rdx
btr rcx, rdi
mov dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 79
cmp esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
