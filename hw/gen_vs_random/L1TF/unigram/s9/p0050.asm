.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cx, 82
add cx, 97
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
btr esi, eax
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
mov esi, -1776760885
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
lea eax, qword ptr [rdi + rdi]
test rax, 404297506
jmp .bb_0.1
.bb_0.1:
cmp rdx, rdx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 1 # instrumentation
add bl, -9 # instrumentation
cmovs ax, cx
xchg ebx, eax
test eax, edx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
