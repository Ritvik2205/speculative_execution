.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rsi
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], edx
bts ax, 22
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add dl, -11 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rax]
add al, al
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
xchg al, bl
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
xor eax, -105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
