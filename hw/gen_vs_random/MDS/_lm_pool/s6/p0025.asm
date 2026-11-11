.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 31082
and sil, dil
or bl, dl
and bl, al
btr ax, cx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor dil, cl
or al, 74
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
or ebx, -104
or ecx, 11
and al, sil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
