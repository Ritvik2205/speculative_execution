.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and ecx, -104
and dl, dl
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or bl, al
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
or sil, cl
jmp .bb_0.1
.bb_0.1:
or dl, al
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
or al, -17
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
jmp .bb_0.2
.bb_0.2:
xor cl, 98
and dil, -62
xor sil, 110
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
