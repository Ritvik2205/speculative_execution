.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -38 # instrumentation
cmovp rax, rsi
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
cmovs ebx, ecx
and bl, cl
cmovb ecx, ebx
and sil, -94
cmovnbe si, di
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
or al, -8
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovp esi, edx
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
cmovo si, dx
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], ebx
or sil, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
