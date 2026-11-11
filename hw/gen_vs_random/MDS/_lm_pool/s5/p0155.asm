.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, 89
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or rcx, 54
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor ax, -4010
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 63
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
xor dl, -43
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 54
jmp .bb_0.3
.bb_0.3:
xor sil, -14
test al, -7
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
