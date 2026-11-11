.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ecx, edx
cmovs edx, edx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 93
cmovnbe si, ax
or sil, al
and cl, cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
btr edx, 255
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and edi, 23
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
not cl
xor si, 91
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], edx
and bl, 68
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
