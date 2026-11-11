.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
or dil, -41
and bx, 32
or al, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
xor rax, -91
or al, -17
xor di, -83
xor rdx, -59
and sil, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
