.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
or al, sil
test al, cl
test al, cl
xor dx, 57
and al, sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rax, -731384280
xor sil, cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and sil, 89
test eax, -675944960
test al, bl
and rcx, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
