.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -121 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
bts esi, edx
adc bl, 70
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
or cl, dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
