.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 97 # instrumentation
cmovnbe eax, edx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 86
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
or cl, bl
mov cl, cl
adc bl, -14
lea esi, qword ptr [rcx + rsi + 41]
add dl, 127 # instrumentation
setnbe sil
lea ax, qword ptr [rsi]
setle bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
