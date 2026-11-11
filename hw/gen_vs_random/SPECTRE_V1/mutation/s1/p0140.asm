.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -112
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
sbb al, al
add cl, 112 # instrumentation
sbb ebx, 31
cmovnz cx, di
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
sets bl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rdi + rbx + 1041]
sub rsi, rax
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
add bl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
