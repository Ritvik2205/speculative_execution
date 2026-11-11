.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 4
add cl, -23 # instrumentation
cmovl ax, bx
add dl, -73 # instrumentation
btr di, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
adc bl, -73
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], -51
add al, bl
lea rcx, qword ptr [rcx]
test dl, dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
