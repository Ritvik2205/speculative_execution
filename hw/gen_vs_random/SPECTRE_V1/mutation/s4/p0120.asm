.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1365488374
cmovl esi, edx
adc al, cl
nop
inc sil
sets dil
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
add al, 64 # instrumentation
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -126 # instrumentation
cwd
bt rdx, rdx
bswap rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rdx
imul cx
add bl, 2 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 931150336
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
