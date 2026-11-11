.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and dl, 97 # instrumentation
cmovnp si, cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
cmovb si, si
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and al, 54 # instrumentation
cmovnp si, si
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovnz bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
btc rax, 106
and cl, 125 # instrumentation
cmovo ax, di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, cl
and dl, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
xor al, 122
and cl, dl
bt rdx, rdx
xor ax, 31969
or al, 16
and cl, dl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
