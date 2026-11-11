.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 80
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
dec rcx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
setnbe dil
add sil, 36
lea edx, qword ptr [rax + rcx]
add al, -106
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
xor al, 86
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
