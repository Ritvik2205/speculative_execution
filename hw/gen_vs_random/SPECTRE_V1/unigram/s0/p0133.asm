.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 90
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add sil, 112 # instrumentation
adc sil, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp di, cx
add edx, 97
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], al
add dl, -34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdi]
or rcx, rcx
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
cmovo bx, ax
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 73
lea eax, qword ptr [rsi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
