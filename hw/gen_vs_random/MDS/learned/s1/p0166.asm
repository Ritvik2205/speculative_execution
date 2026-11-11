.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdi
cmovnz cx, si
not si
sbb al, dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and si, bx
lea edi, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmp al, dl
and cl, 102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
not eax
or rdi, 67
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
xor cl, al
cmovbe ax, si
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 75
test rax, 1732677821
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
