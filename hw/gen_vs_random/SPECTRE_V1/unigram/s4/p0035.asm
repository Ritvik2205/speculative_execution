.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
sets dl
cmp rcx, 29
or rsi, -14
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
add dl, -97 # instrumentation
sets sil
add rax, -845342150
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, -93 # instrumentation
not rdx
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
adc esi, -66
and dx, 65
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
add al, 32 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
sets al
add sil, -51 # instrumentation
cmovno rsi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
