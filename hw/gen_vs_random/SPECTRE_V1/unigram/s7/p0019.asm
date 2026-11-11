.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
cmovnle rbx, rax
or cx, 76
neg ebx
and rdi, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], 15
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
sbb al, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
