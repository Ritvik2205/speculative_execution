.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 88
sub al, 63
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
cmp ebx, -33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rbx + rax + 74]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 73
lea rax, qword ptr [rcx]
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
sub cl, al
add bl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
