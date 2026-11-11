.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
not sil
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 96
cmovb ax, dx
and al, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
cmovs bx, cx
btr rcx, 83
and cl, 57 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
or sil, dl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
or cl, 6
jmp .bb_0.1
.bb_0.1:
and al, -38 # instrumentation
cmovnb cx, cx
and rdi, rcx
bt rax, rdi
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
test al, 127
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
