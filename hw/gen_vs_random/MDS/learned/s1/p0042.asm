.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, sil
or eax, -927349615
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
or dil, 16
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 79
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and cl, al
and sil, al
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
and di, 91
not cl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
