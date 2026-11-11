.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
lea ebx, qword ptr [rcx + rbx]
cmp rax, 1189904463
and cl, dl
and al, -54
test dl, -36
cmovnl edx, esi
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], -46
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
test ax, -30637
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
setle dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], cx
lea cx, qword ptr [rdx]
dec al
jmp .bb_0.2
.bb_0.2:
add dl, 34 # instrumentation
add al, -28 # instrumentation
and rdi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
sbb dl, cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edi
movzx eax, dil
imul cx, bx, -29
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
cmovle si, di
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
