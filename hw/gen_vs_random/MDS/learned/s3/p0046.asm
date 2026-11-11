.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
not dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
xor dl, 8
test cl, -86
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
xor ecx, 8
not cl
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rax, 41
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xor dil, 8
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
