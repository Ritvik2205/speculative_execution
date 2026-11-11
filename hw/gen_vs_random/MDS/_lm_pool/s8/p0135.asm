.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
test dil, bl
test eax, 158941032
or al, -78
or sil, -49
and rax, -2039117613
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
or al, 37
test al, dl
not sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
or eax, -927349615
xor rax, -1128378406
xor cx, -18
xor rcx, 71
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
