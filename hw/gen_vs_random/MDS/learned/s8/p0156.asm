.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rsi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, ecx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
jmp .bb_0.1
.bb_0.1:
xor dil, -5
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or dil, bl
jmp .bb_0.2
.bb_0.2:
and sil, 89
and dil, -62
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
jmp .bb_0.3
.bb_0.3:
and ax, 19224
or dil, -71
or al, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
test ecx, -1843375753
jmp .bb_0.4
.bb_0.4:
test eax, 298249463
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 67
or dil, -76
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
and cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
