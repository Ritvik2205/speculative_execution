.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dil, sil
add ebx, -116
or cl, -62
add dl, 71 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
xchg cl, sil
add al, -109
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, 25
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 27
mov cl, -72
and rdi, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdi]
sets bl
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 70
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
dec al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
cmovno rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
