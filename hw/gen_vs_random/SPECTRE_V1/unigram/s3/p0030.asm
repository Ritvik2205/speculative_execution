.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 39
sub bl, -6
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, bl
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
add bl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
lea eax, qword ptr [rdi + rax + 18]
cmovnp di, ax
adc al, sil
add sil, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], si
cmp al, 46
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
