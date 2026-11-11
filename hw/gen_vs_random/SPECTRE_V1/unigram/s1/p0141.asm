.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
lea dx, qword ptr [rcx + rdi]
and bl, 87
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 19
and sil, 111
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
bt rax, rbx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt eax, 78
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
movsx ebx, bl
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
xor bl, -38
add al, 41 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
xor al, -19
add cl, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
