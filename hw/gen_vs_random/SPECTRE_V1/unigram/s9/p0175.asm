.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -99
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
neg cl
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
or al, al
add al, -61 # instrumentation
seto al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
btc edi, 77
add bl, 104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
dec bl
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
mov cl, dil
adc dil, 62
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
