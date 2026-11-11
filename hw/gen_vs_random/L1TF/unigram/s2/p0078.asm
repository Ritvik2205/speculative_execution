.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
add cl, 59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], 66
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 92
cmovnbe bx, cx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
cmovz eax, edx
cmovs rdx, rbx
setle sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 80
add cl, -38 # instrumentation
setbe al
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
