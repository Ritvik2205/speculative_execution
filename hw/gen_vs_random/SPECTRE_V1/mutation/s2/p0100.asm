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
sbb ax, 82
and rax, -273199823
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -8 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], -84
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
xor al, cl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
cmp rdx, rbx
jmp .bb_0.2
.bb_0.2:
add al, -94 # instrumentation
cmovnle rcx, rsi
or sil, 52
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
test al, 40
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], -77
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
