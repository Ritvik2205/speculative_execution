.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
test bl, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
jmp .bb_0.2
.bb_0.2:
and ecx, -104
xor ax, -1005
and cl, -71
and rdx, 24
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or al, 54
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
bt dx, cx
test eax, 343548072
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
