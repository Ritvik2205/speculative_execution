.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and cl, cl
and al, -8
or cx, 49
xor bl, cl
xor eax, 571592471
xor dil, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
btr edx, ebx
and dil, -39
test bl, -14
test cl, al
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
