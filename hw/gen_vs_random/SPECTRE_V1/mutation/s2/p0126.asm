.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], -32
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
btr bx, 144
cmovz rax, rdi
xor bl, bl
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
bts rdi, 229
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
loope .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
cmp ax, 7046
lea dx, qword ptr [rcx + rbx + 54281]
bt ecx, eax
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], -16
neg rdx
and rdi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdi], 98
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
