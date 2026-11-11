.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub esi, 16
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 15
and rdi, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
xchg bl, al
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
lea dx, qword ptr [rdx + rdx]
mov dl, cl
add cx, -103
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
btr edi, esi
or ecx, 55
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
test rdx, rcx
and al, -54
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
