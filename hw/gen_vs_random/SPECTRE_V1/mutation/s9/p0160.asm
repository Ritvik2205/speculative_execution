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
and rax, 1713273566
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], ax
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 5
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 59
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
