.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
xor bl, -88
cmovnl ebx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 46
and bx, si
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
xor dl, 34
test al, cl
xor al, 115
jmp .bb_0.1
.bb_0.1:
not ecx
bts bx, 3
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 84
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
btr rax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
