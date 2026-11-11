.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
not al
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
bts eax, ecx
jmp .bb_0.3
.bb_0.3:
cmp si, 17
lea rax, qword ptr [rsi]
add bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
