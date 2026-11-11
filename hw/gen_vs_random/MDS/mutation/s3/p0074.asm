.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103
test cl, 62
or cl, -36
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
cmovz ax, ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and si, -121
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
xor dl, al
cmovnz ax, cx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
xor bl, cl
jmp .bb_0.2
.bb_0.2:
and al, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
cmovo dx, ax
or ax, 30524
cmovnp cx, cx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovnb edx, eax
cmovb rcx, rdi
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
btr bx, ax
cmovnb si, di
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
btr rax, 209
btc edx, 7
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test bx, ax
bts ax, si
test dl, 27
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
