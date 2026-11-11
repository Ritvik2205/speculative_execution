.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
or sil, al
and rax, -636362975
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
or cl, 119
xor dl, al
and dl, -73
jmp .bb_0.1
.bb_0.1:
and ax, 27170
or al, 24
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
