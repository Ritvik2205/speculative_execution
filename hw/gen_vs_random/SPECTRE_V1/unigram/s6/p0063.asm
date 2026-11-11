.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc si, 6
imul eax
cwd
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 67
adc bl, al
add al, 57 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
setb bl
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rsi]
add al, 64 # instrumentation
cmovnz di, cx
sub esi, 83
cmovnz si, si
cmovle di, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
