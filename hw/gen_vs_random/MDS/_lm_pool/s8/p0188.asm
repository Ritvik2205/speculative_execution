.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 96
and al, 87
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or al, bl
and ax, -10351
not sil
or ax, -7150
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
xor bl, -88
and ax, 19740
xor al, bl
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
xor cl, 24
jmp .bb_0.1
.bb_0.1:
xor dil, 8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
