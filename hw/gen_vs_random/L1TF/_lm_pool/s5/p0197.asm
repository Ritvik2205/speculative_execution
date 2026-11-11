.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 104 # instrumentation
mov eax, 37
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or sil, bl
lea rcx, qword ptr [rdi + rdx + 55]
btr rbx, rdi
and rcx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rcx]
and di, 17
add sil, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
