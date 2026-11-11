.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and si, dx
or dl, al
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 56
or cl, dil
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
xor edi, 38
or al, -8
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rcx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
bt esi, 14
test bl, 106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
