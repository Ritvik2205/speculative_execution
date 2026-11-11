.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rax]
bt di, ax
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
or dl, -21
cmovns di, dx
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
xor ebx, ebx
test bl, -114
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
or cl, 30
btc dx, di
and al, -8
cmovp dx, bx
and bl, 38 # instrumentation
cmovno rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
