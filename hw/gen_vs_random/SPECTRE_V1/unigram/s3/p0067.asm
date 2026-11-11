.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -119 # instrumentation
adc bl, sil
and cl, dil
sets sil
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
adc dx, -112
add bl, cl
cmovs rdx, rdx
xchg dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 98
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
or rdi, rbx
inc sil
bt cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
