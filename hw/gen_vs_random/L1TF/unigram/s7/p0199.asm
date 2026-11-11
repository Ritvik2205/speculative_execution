.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
sub sil, -99
setnle bl
jmp .bb_0.1
.bb_0.1:
imul al
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
sbb eax, -403815802
test ebx, 22
bt edx, 38
setp cl
and rsi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rsi]
and dl, 73
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
or rdi, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
