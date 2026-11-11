.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 127 # instrumentation
sets al
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], 8
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], si
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
or rcx, 48
btr bx, dx
lea ax, qword ptr [rdx + rcx]
add bl, -107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
test sil, 87
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 70
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
and al, dl
mov rax, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
