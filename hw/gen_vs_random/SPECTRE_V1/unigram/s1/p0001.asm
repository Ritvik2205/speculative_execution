.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs esi, ebx
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rcx]
add sil, 2
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
bt rdx, 7
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
or eax, -126
setp al
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
nop
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rax]
add al, -51 # instrumentation
cmovno rax, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
