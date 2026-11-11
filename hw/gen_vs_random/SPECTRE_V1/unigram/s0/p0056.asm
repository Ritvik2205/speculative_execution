.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdi + rbx + 63]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and al, -119
adc sil, dl
and rsi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
btr ax, 34
cmovnp bx, cx
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 67
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
cwd
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
cmovs dx, ax
add cl, dl
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
