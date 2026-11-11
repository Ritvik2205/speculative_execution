.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
setnle cl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], -16
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
cmovnle ax, ax
btc ax, dx
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
xor sil, 64
lea ecx, qword ptr [rbx + rbx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
