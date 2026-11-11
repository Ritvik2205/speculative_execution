.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, bl
imul dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
setz cl
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cbw
mov cl, dl
add dl, -47 # instrumentation
sbb bl, 99
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rsi]
not dl
imul rbx, rax, 46
sub al, -1
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
