.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rsi]
or bl, dl
xor al, -4
and rdi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and ecx, -104
and bl, dil
jmp .bb_0.2
.bb_0.2:
bt rax, 22
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
not cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
or cl, sil
test ax, 4430
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
