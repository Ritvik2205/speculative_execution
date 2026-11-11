.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl ebx, edi
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
and al, dil
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
sub bx, 18
btr edx, 7
xchg rax, rax
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
cmp dil, 41
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rdx]
or al, dil
mov dx, bx
setnp bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
