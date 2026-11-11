.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -114
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
or cx, -42
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor rbx, 89
test al, bl
inc cl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 34
or dil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
