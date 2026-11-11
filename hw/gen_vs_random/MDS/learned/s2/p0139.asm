.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
or bl, cl
or cl, -77
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 60
btr edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
xor al, 34
xor al, -26
xor sil, -15
xor sil, 27
and al, bl
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
xor rax, -773894210
xor cl, dl
test cx, 401
bt ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
