.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
test bx, bx
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -10
xor bl, dl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
sub edx, ebx
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], ax
cmp dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
adc rax, 1431457700
mov ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
