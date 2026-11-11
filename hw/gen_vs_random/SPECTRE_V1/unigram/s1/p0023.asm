.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
add al, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
test al, sil
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 29
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 95
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 4
and rax, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
add cl, al
and al, dil
sub dl, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
