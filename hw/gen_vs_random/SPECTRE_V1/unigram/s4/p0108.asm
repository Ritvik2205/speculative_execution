.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
add rax, -704585563
sbb rdx, -34
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 13
lea edi, qword ptr [rsi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea esi, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rcx
and rcx, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
or bl, 78
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 89
lea rdi, qword ptr [rax + rax + 80]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 23
sub cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
