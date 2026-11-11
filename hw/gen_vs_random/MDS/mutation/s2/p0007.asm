.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 54 # instrumentation
cmovnp si, si
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and dl, 97 # instrumentation
cmovnp si, cx
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
cmovb si, si
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
or ax, bx
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
not bl
xor bl, -61
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
btr cx, di
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
