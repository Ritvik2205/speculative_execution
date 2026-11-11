.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
cwd
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdi]
sub di, 66
lea rcx, qword ptr [rax + rsi]
or rsi, 90
mov bl, bl
cmp ecx, 18
jmp .bb_0.1
.bb_0.1:
sbb rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 60
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rax
add dl, -108 # instrumentation
cmovnle ebx, ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and cx, bx
sbb dx, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
