.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
test al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and al, 106
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 58
test cl, cl
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 49
jmp .bb_0.1
.bb_0.1:
or bl, cl
xor bl, sil
jmp .bb_0.2
.bb_0.2:
and al, dil
jmp .bb_0.3
.bb_0.3:
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
