.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdx]
cmp ecx, 77
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
test bl, 12
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
cmovb dx, cx
sbb bx, 21
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 48
cmovp dx, si
bt rbx, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
