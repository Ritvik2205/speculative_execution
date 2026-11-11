.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
lea rbx, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and eax, -409673666
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and ax, 37
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and bl, dl
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
xor dil, -42
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
