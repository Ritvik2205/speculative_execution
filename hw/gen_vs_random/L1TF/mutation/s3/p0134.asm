.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], eax
and dx, cx
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 53
sbb rax, 803312930
xor dl, cl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and cl, al
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
cmp sil, -11
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx], 67
movsx rdx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
