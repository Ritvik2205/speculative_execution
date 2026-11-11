.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rsi
cmp bx, 77
and rdi, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
add dl, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
cmovo cx, di
bswap ebx
xor rsi, 17
add cl, cl
movzx edi, al
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp bx, ax
and rsi, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rsi]
sbb dil, bl
movsx ax, cl
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
or dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
