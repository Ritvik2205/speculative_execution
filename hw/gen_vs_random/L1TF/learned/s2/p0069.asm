.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
cmovb bx, cx
xchg ecx, eax
jmp .bb_0.1
.bb_0.1:
setb al
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 72
and eax, edx
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
not edx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
cmovp ebx, edx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
mov bl, cl
sub rax, 788906357
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 48
test ecx, 10
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, ebx
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
