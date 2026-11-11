.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
add dl, 92 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rbx]
cmovnp bx, si
xor rsi, 73
setnb dil
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add rax, 324518812
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
add cl, 29 # instrumentation
setnb sil
cmovs si, ax
cmovnbe esi, eax
or cl, dil
movzx si, bl
lea cx, qword ptr [rdi + rdx + 100]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
