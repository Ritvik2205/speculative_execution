.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
sbb cl, dl
setp al
cmp al, dl
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
not edx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
and cl, -57
add ebx, -116
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
cmovnbe si, ax
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
