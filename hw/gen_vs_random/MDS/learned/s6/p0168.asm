.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rax, 4
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
bt cx, dx
test al, sil
or al, -17
xor eax, 984871847
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
btr bx, ax
test al, -81
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
