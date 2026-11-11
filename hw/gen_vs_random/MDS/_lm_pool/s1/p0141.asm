.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
or al, dil
test al, dil
or cl, sil
or cl, al
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or al, -58
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
bts ebx, 205
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
