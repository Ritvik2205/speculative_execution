.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], dx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edi, eax
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 56
inc cl
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
btr ebx, 50
add ecx, 34
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rsi + rdi + 28]
neg rsi
cmp rcx, rdx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], cx
cmovno edi, esi
setnp cl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
