.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 64
test dx, 16353
or rax, -689609688
and dl, dil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], edx
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
xor sil, 110
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor dl, dil
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or cl, 7
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
