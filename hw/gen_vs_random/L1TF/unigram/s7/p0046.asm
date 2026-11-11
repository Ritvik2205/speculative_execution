.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ax, si
lea ax, qword ptr [rbx]
xor dl, 9
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
bts esi, ebx
not cx
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
xor bl, bl
add dx, 31
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
sub dl, 41
cmovp ecx, edx
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
