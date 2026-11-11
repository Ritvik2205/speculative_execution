.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rbx]
sbb cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
setp al
not edx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], eax
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
cmp al, dl
or edx, esi
js .bb_0.1
jmp .exit_0
.bb_0.1:
and cl, al
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
adc al, -82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
