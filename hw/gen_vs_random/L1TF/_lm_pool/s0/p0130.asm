.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx esi, di
test al, 15
and sil, 37
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rsi
not bl
add cl, al
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or dil, dl
bswap rax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
