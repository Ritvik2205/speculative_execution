.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdi, bl
add dl, -123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
lea bx, qword ptr [rdi]
setnl bl
or sil, 3
add bl, 7 # instrumentation
cmovnl edx, edi
lea rcx, qword ptr [rbx + rdi + 39]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 32 # instrumentation
sbb sil, dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 14
or ax, -89
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
cwd
adc bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
