.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
or dil, dil
btc eax, 3
lea eax, qword ptr [rdx + rcx + 96]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
lea ecx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
js .bb_0.1
jmp .exit_0
.bb_0.1:
dec sil
test edi, 80
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
setns sil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
add cl, -83 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
mul al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
