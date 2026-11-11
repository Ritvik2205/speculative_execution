.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -87 # instrumentation
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
and si, 97
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
bt rsi, 14
add sil, -93 # instrumentation
cmovb rbx, rsi
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
or sil, -44
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], esi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
setb dl
lea rdi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], bx
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
