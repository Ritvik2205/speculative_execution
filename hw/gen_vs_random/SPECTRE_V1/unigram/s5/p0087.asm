.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 40
lea si, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rcx]
add al, -44
not ebx
cmovnle ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], -113
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 98
sub bl, sil
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 25
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
