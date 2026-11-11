.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and sil, dl
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
and rbx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rbx]
add rcx, rdx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 5
or eax, 1802312508
setnbe bl
test cl, dl
bts bx, si
or eax, -1434249782
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or ax, -15282
and rbx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
or dl, 88
dec dl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
