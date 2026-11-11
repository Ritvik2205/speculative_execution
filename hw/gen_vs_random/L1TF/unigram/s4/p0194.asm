.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
cmp di, -78
cmp cx, 3
adc al, -103
movsx rdi, di
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and ax, bx
sbb si, 54
test dl, -37
and bx, dx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
