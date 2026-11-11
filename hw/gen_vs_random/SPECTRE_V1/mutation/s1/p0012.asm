.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 97
sets bl
and rbx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], ebx
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 18
cmovnz cx, di
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
add cl, 112 # instrumentation
sbb ebx, 31
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
sbb al, al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
add bl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sub rsi, rax
lea si, qword ptr [rdi + rbx + 1041]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
