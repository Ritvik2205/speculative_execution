.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 84
lea cx, qword ptr [rdi + rsi]
add cl, 32 # instrumentation
sbb sil, cl
and rbx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rbx], di
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
xor bl, 35
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
dec rax
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 93
setnb dl
or dil, -55
add dl, 87 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
