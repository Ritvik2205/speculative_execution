.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rdx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdx]
btc edx, edx
setnb bl
and bl, cl
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
lea rcx, qword ptr [rdx + rbx + 53]
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
jo .bb_0.1
jmp .exit_0
.bb_0.1:
mov bl, -31
lea bx, qword ptr [rax + rbx + 84]
and rdx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdx]
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
