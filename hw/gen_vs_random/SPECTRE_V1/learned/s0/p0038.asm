.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdi]
add dil, dl
lea edi, qword ptr [rdx]
add ax, 6980
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
test al, 84
and rdx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rdx]
setp dl
lea edi, qword ptr [rcx]
cmp edx, 44
and rcx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rcx]
cmovs si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
