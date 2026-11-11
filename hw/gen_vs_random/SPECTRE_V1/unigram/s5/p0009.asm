.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 86
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 89
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
cmovb rax, rsi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -94 # instrumentation
or cl, dl
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
add bl, 113 # instrumentation
setnb bl
add bx, si
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
lea rcx, qword ptr [rdx + rdx + 72]
and rdx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
lea dx, qword ptr [rbx]
lea ebx, qword ptr [rbx + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
