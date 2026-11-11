.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 43
test cx, dx
jmp .bb_0.1
.bb_0.1:
and dil, dil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
or bl, sil
or al, 37
test esi, 1857129931
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and eax, 33
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
xor bl, al
and al, 82
test eax, -675944960
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
or bl, 13
xor dil, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
