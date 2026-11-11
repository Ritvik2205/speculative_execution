.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx si, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cbw
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
lea si, qword ptr [rcx + rax + 53]
setnbe sil
test esi, 88
add dl, 20 # instrumentation
cmovnbe rax, rdx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
mov ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rax]
cmovnbe rdx, rsi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], bl
add bl, -108 # instrumentation
sbb sil, 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
