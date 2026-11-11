.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
cmovnbe ebx, eax
btr edx, 255
and dx, 60
or bl, 127
cmovp eax, esi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
bts edx, 189
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
test sil, sil
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
bt bx, di
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
