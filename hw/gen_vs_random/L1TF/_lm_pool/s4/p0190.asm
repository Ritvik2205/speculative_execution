.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -48
add cl, -20
test eax, 899472326
lea di, qword ptr [rcx + rdi + 62995]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -32
xor bl, sil
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
xor ax, 27703
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rcx]
lea rsi, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
