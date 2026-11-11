.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -84
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
cmp rcx, 24
or dl, -67
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
add eax, 109
lea ax, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
lea rdi, qword ptr [rax + rbx]
or eax, 287965578
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
