.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and ax, 32540
setz dl
and sil, -55
lea rbx, qword ptr [rdi + rdi + 63323]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 2
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -16
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rdi
lea edi, qword ptr [rdi + rdi + 44205]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
movzx si, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
