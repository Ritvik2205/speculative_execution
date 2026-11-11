.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 63
add al, 110
add cl, -94 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 106
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
lea rcx, qword ptr [rbx]
movsx ax, al
add sil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], -75
or al, cl
or al, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
