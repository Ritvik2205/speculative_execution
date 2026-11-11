.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rcx]
or cx, 10
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 46
and rcx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], eax
and bl, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 19
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edi
xor rcx, 85
btc dx, 38
bt rsi, rbx
jmp .bb_0.1
.bb_0.1:
and dl, 107 # instrumentation
cmovs ecx, eax
and bl, -104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
test esi, 52
or dl, bl
or rbx, -124
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rdi
cmovs edx, edx
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and cl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
