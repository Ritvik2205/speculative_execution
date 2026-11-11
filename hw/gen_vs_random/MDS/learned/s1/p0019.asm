.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 127
bts rbx, rcx
test rax, -2052112368
test bl, 65
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and al, dil
and ecx, -104
and al, bl
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test al, 66
or dl, bl
or rax, 1020005579
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
