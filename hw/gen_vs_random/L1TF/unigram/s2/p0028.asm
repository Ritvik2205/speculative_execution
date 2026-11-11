.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
lea eax, qword ptr [rax]
lea rbx, qword ptr [rcx + rax]
lea bx, qword ptr [rax + rbx]
sbb rbx, 18
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
cmovnbe ax, cx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -39
adc rax, -1877286258
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], al
bts esi, edx
and rcx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rcx]
xor dil, 2
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
