.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 93
add cl, -29 # instrumentation
lea rsi, qword ptr [rax + rax + 6]
neg rbx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rsi + rbx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], rbx
add al, dl
or al, dl
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 34
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
add dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
