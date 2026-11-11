.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -90
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 26
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 92
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
setns dil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
lea rax, qword ptr [rdi + rsi]
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
mul di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
