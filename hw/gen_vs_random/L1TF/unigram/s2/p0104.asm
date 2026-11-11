.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 82
sub edi, 25
not bl
sbb al, 37
and rdi, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdi]
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 26
or bl, al
xor bl, bl
cmovnbe si, dx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
