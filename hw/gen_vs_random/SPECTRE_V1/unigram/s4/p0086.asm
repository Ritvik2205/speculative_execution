.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rdx, ax
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rsi
add bl, -5 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
add cl, dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 1 # instrumentation
add dl, 75 # instrumentation
adc ax, 41
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rsi]
xchg rbx, rcx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rbx]
setbe dil
lea rdi, qword ptr [rbx + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
