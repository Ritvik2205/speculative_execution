.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 46
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], 48
sbb edx, edx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], 17
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
lea esi, qword ptr [rax]
bts rax, 45
or dx, -126
and bl, 125
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
