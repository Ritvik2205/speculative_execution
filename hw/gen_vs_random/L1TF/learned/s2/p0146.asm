.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea ecx, qword ptr [rax + rsi]
setb bl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 7
adc al, 36
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
cmp rsi, rdi
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
sbb rax, 717206440
cmp sil, -110
and rcx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
