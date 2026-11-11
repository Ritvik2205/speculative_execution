.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
sub dl, 32
lea dx, qword ptr [rcx]
xor dx, 51
cmovp di, cx
and rbx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rbx]
setno dil
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rcx + rbx]
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], cx
btc rsi, 29
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
cmovb eax, esi
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
