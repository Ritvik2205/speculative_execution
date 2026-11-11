.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, sil
inc dl
add al, -72
test al, 40
and cl, dl
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
