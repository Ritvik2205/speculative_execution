.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
cmovle ecx, edi
imul dl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], bl
lea di, qword ptr [rsi + rbx]
add al, cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and bl, 124
or eax, -126
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea esi, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
