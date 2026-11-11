.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
add al, 123 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
bt ecx, edx
not rax
mul rcx
test bl, -8
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb cl, bl
and sil, cl
and rsi, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
bt esi, 61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
