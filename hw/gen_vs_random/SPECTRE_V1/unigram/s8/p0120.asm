.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edi, 54
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 36
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 77
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], sil
cmp rbx, 65
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 31
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 72
and al, dl
lea rcx, qword ptr [rax + rsi]
sbb dil, sil
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
