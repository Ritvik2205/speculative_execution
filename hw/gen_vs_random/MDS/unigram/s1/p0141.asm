.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
cmovs rbx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rsi]
bts rdx, 200
cmovnbe rax, rcx
and al, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
cmovl dx, bx
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
and ax, -10351
btr edi, 221
cmovle si, cx
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
test al, 22
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
btr rcx, rdx
xor bl, al
and si, -121
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
