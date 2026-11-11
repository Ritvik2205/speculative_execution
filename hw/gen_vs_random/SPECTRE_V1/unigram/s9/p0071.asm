.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
bt rbx, rdx
add al, 107 # instrumentation
lea edx, qword ptr [rcx + rsi + 37]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
imul bx, cx, 5
imul dx
loop .bb_0.1
jmp .exit_0
.bb_0.1:
sub rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
cmovle dx, dx
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
inc rdx
lea cx, qword ptr [rsi + rdx + 61792]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
