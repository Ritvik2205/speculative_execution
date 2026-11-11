.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], edx
lea esi, qword ptr [rcx]
xchg edi, eax
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], cl
xor cx, di
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 10
and al, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
sub rdx, 35
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rsi, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
