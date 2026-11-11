.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, -11439
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
cmp bl, cl
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -51
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
test dl, dl
adc bl, -73
lea rcx, qword ptr [rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
