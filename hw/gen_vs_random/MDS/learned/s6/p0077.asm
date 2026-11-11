.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 8
or dl, sil
and bl, dil
test bl, al
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
xor al, sil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], 49
or al, sil
xor rbx, 89
test dil, al
jmp .bb_0.1
.bb_0.1:
xor rdi, -9
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
