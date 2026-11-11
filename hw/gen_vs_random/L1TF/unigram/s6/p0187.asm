.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
setp dl
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
imul si, ax
lea dx, qword ptr [rsi + rdx + 71]
xchg edx, eax
imul cx, ax, 51
lea dx, qword ptr [rcx + rdx + 94]
cmovnp dx, ax
or dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
