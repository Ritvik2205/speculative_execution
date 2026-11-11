.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc dx, si
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 68
cmovbe ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
or rcx, 34
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
imul ebx, esi, 9
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 53
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 41
bts rdi, rax
add bl, bl
add bl, -87 # instrumentation
cmovnle rcx, rbx
bswap rdx
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
