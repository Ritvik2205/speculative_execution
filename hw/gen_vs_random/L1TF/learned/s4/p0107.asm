.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 4
test dl, sil
movsx dx, bl
and al, 76
adc dl, sil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -64
jns .bb_0.1
jmp .exit_0
.bb_0.1:
dec dl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
cmovno ax, ax
bt eax, 11
adc eax, 551972257
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 95
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
