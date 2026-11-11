.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], esi
bts rcx, rdi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
or dl, al
not bl
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 50
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
xor bl, dl
or cl, -36
jmp .bb_0.1
.bb_0.1:
test rax, 1207043993
xor dil, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
