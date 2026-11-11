.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 49
or cl, -62
add cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
xor al, al
lea cx, qword ptr [rbx]
sub cl, dl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edi
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
or eax, 848176907
xor bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
