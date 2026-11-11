.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -114
xor al, 99
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 61
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and ax, -4410
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
test rdx, 40
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
xor dil, cl
or al, 74
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
or cl, -77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
