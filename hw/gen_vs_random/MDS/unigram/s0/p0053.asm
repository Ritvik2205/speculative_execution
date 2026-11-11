.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rax, rsi
cmovp ax, dx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and bl, -123 # instrumentation
cmovnp bx, dx
test ax, 4430
and cl, -44 # instrumentation
cmovno rdi, rbx
or bl, dl
cmovo rbx, rbx
bt rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
test bl, -9
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and bl, -14 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
xor bl, -88
cmovle edx, ecx
cmovnle rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
