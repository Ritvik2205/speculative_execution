.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
lea ecx, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
lea rcx, qword ptr [rbx + rbx + 11064]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
inc dl
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 5
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rdx]
adc dx, -112
neg ecx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
neg sil
test cl, -120
cbw
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
