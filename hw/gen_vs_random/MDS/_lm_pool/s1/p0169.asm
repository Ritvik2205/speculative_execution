.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor al, 8
or dl, -89
xor dil, al
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and dx, 60
test bl, 65
and ax, 29207
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
xor rax, -91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
