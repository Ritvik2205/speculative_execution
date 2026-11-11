.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
or dl, bl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or bl, -62
or sil, -78
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or dil, -76
test cl, -86
xor di, -83
and di, 91
xor dl, al
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
xor rax, -843636050
xor ax, 23633
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
xor cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
