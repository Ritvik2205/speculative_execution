.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setno sil
and rdi, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rbx
cmovs si, ax
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 88
add bl, 90 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and al, -119
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 89
or cl, cl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx], 40
add al, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
movsx dx, bl
movsx rsi, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
