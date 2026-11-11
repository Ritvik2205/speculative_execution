.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 38
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
cmovle dx, dx
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and al, -64 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
cmovnb edx, edx
bt edx, 75
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 23
cmovz rdi, rax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 20
cmovb ebx, esi
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and dx, di
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], al
xor rax, 90
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
