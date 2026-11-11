.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, cl
and rbx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rbx]
setle sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cmovnp rbx, rcx
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add esi, 87
add bl, -101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 73
and rcx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rcx]
bt ecx, ebx
mul bl
and sil, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
btc ecx, 66
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
