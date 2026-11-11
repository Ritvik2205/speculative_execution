.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
or al, bl
and sil, al
or al, 16
xor cl, 15
test bl, -9
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
bt cx, ax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ebx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
xor dx, 10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
