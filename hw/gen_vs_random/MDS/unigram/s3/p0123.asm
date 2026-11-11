.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 125
and rcx, 107
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
cmovnle di, di
btr rcx, 43
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and dl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rax]
and bl, cl
and cx, -8
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
btc bx, 58
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 10
or cl, dl
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
btr rdi, 129
or sil, al
cmovbe esi, esi
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
