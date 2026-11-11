.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -86 # instrumentation
cmovns cx, di
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rsi
and cl, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
xor edx, -13
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and bl, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
cmovnp ax, dx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], si
test rdi, 81
or eax, 678817098
jmp .bb_0.1
.bb_0.1:
test cl, -113
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
cmovns cx, ax
bts rdx, rdi
bt eax, 37
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
test al, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
