.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor di, -83
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
xor al, sil
or sil, dl
or sil, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor bl, al
or al, 30
and cl, -6
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
