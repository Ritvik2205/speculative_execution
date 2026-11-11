.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
cmp si, -11
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 92
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
adc cx, -30
add dl, -125 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 35
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and al, -54
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
cmovnp rbx, rax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
mul si
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdi, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
