.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
lea rbx, qword ptr [rbx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 53
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
xor eax, -105
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 7
or rsi, -119
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
lea bx, qword ptr [rdi + rdx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
imul cx
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx], 4
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
