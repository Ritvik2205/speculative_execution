.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx]
and rdx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdx]
sub bl, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor dil, al
xor bl, -38
test rcx, rbx
add dil, dl
and dl, bl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
