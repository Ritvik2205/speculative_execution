.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
sbb ax, -17107
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
and rax, 1713273566
inc cx
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rdx, rbx
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
add al, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], -84
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
