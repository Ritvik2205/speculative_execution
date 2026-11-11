.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], bx
inc cx
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], cl
sbb ax, -17107
and rax, -273199823
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 107 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
lea dx, qword ptr [rcx + rdi + 45005]
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
cmovnbe di, dx
sbb al, 49
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
bt bx, di
add dl, -61 # instrumentation
seto dl
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
add bl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
