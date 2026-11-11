.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
or dl, dl
bt dx, ax
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
cmovno rbx, rcx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, esi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
test rax, rdi
test sil, 17
cmovnp rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and edx, -44
and dl, -26 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
xor dl, 40
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or rdi, 21
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and sil, 53 # instrumentation
cmovnl rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
