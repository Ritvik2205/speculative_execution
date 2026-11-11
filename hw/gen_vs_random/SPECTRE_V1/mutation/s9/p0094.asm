.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
inc cx
sbb ax, -17107
and rax, -273199823
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], -84
xor al, cl
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmp rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
