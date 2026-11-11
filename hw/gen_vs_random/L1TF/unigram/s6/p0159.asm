.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
bts rdi, rdi
and al, al
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
add cl, -102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
or rbx, 18
inc rbx
and rdi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rdi]
cmp dil, bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
cmp cx, 60
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 1665543409
and rcx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
