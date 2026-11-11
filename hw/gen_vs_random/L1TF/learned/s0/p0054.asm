.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 18
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 5
bts edx, 38
and edi, 46
xor dil, dl
or cl, 105
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sub bl, dl
xor al, dil
test ax, 636
mov bl, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
