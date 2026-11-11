.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
add bl, -22 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdx]
add al, 82 # instrumentation
adc al, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
test al, 15
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
test dil, dl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rcx
setnz sil
lea rbx, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdi]
mov cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
