.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -104 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
sub sil, -99
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, dil
jmp .bb_0.2
.bb_0.2:
bt ebx, edi
btr di, si
and al, -68
and dil, -82
cmp bl, 123
sub sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
