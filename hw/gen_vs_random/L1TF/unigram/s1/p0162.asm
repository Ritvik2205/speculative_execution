.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
add al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 8
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and bl, dl
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
adc dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
cmovb dx, cx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 3
cmovb ebx, ecx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 9
mov rdx, -1012904117298842753
add al, 50 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
