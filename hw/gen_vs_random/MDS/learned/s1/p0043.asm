.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
xor rax, -91
and rdi, 89
or sil, dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -60
xor cl, bl
xor dl, 34
or al, dil
not cl
xor sil, -126
jmp .bb_0.2
.bb_0.2:
test al, sil
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 41
or bl, 100
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
