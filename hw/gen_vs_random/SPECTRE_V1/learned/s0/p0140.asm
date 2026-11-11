.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
setno dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
lea edx, qword ptr [rdi + rsi + 55]
dec dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 58
neg edx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 54
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
xor al, 86
xor ax, -2537
cmovns dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
