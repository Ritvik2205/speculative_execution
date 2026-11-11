.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
or edx, esi
cmp al, dl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
setp al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
not edx
sbb cl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and cl, al
adc al, -92
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
