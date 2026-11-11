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
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 3
and cl, 112 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
btr cx, di
or ax, bx
xor bl, -61
not bl
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rax, 79
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], dx
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
cmovl rdx, rsi
cmovs si, di
and al, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
