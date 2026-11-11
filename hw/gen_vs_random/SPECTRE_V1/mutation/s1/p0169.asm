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
and rax, 2134929425
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
or di, -85
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bt rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
