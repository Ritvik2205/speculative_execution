.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp ax, bx
cmovnl esi, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
add dl, -127 # instrumentation
movzx edx, al
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
add bl, 55
xchg cl, al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
or sil, bl
cmp dl, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
lea edi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rdi, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
