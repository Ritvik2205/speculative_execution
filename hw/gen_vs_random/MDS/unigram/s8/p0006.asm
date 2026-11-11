.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
or esi, -110
btr rdx, 83
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
cmovle si, dx
and dil, 46 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and sil, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
cmovo rdx, rdx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
btr rbx, 93
xor si, 91
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
and bl, 32 # instrumentation
cmovnbe ebx, edi
or sil, dil
btr rdi, 129
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
