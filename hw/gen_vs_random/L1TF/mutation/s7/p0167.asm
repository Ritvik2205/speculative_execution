.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -93 # instrumentation
cmovb rbx, rcx
lea edi, qword ptr [rdx + rdx + 45410]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
add bl, 21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
cmovbe eax, edi
sbb ax, -14164
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
or dl, -92
setz cl
cmovle rbx, rsi
bt rsi, rdx
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
sbb bl, bl
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
