.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, cx
lea esi, qword ptr [rdi + rdx + 24]
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
bt ecx, 198
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dil, 41 # instrumentation
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
sub ax, 15
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 29
or rax, -357903210
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
lea cx, qword ptr [rdi + rcx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 89
test dil, -107
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
