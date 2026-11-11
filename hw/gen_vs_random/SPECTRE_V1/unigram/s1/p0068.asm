.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 13
sbb ebx, 48
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 95
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
nop
add dl, -125 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 17
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
xor sil, sil
and dil, dil
cmovnle rbx, rax
bt ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
