.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
btr cx, di
xor al, dil
test eax, 1729060510
xor cl, 83
test ax, 6779
xor rax, -773894210
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test rax, -2052112368
jmp .bb_0.1
.bb_0.1:
test bl, -9
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 2
xor sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
