.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 56
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], 51
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
btc cx, di
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -77
setnl bl
cmovnle rdx, rdi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
cmovs eax, esi
lea ebx, qword ptr [rdx + rdx + 46587]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
add bl, -95
and rdx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
