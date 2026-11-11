.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
mov bl, dil
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
xor dl, sil
bt ecx, edx
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
cmovs si, ax
lea rbx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
