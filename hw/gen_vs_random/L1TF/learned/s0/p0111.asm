.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
cmovnbe edi, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub esi, 62
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 16
adc sil, 44
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
bts esi, 243
or rcx, -10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
