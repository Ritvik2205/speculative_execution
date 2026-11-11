.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dl
sbb bl, sil
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
and al, 33
sbb edx, -8
not cl
lea rcx, qword ptr [rbx + rsi]
test al, bl
sub dl, al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, dl
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
or rbx, 1
and dl, -111
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
