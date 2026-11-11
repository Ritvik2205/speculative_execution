.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdi
and al, 54 # instrumentation
cmovnp si, si
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
cmovb si, si
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and dl, 97 # instrumentation
cmovnp si, cx
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
btr cx, di
not bl
or ax, bx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
