.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, -70
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 100
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or bl, -52
test cl, al
and al, 82
xor al, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 61
and al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
xor di, 40
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
or dl, 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
