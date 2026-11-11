.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
xchg rax, rsi
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
add al, al
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
cmovle rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
