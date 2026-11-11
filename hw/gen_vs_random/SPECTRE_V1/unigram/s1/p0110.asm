.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 39
mov cx, 31310
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
inc al
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
not bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 95
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
lea bx, qword ptr [rdx]
cmp bl, -114
or di, 0b1000000000000000 # instrumentation
bsf ax, di
cmovz rcx, rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
