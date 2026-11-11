.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 13090
xor dx, 75
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
or rax, -1523798580
and al, 49
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], -102
and sil, cl
test eax, 424329527
xor al, bl
test bl, dil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
