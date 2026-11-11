.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov rdi, 22
cmovnz ax, ax
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
cwde
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
add cl, -98 # instrumentation
setp dil
add bl, 68
jmp .bb_0.1
.bb_0.1:
add cx, 28
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
btc dx, di
add cl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rsi]
not dil
not ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
