.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
lea eax, qword ptr [rdx]
or dl, sil
cmovle cx, bx
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 25
lea rcx, qword ptr [rdx + rbx + 79]
or al, dl
lea cx, qword ptr [rdx + rax + 98]
cmovnbe rcx, rax
xchg esi, edi
test di, 42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
