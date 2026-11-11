.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and sil, 110
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
test sil, cl
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rdi
or rdi, 29
add dl, 43 # instrumentation
adc dl, dl
setb dil
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
bts rsi, 27
lea rcx, qword ptr [rbx + rsi]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edi
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 39
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
