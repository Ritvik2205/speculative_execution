.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno sil
add al, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
dec edx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 23
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb bl, 13
add dil, -26 # instrumentation
adc esi, edi
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
add al, -106
add ax, -16969
cwd
setnl cl
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
