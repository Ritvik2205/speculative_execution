.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 107 # instrumentation
lea edi, qword ptr [rcx + rbx]
or sil, dl
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rcx
sbb dl, 127
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
bt eax, ecx
add al, 87 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
sub al, 63
cmovz ebx, edi
test al, cl
and cl, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
