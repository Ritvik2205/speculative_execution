.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
xor dl, -19
bt dx, ax
and al, 35
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
or esi, -110
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and eax, -574348013
or cl, dil
xor cl, sil
cmovb cx, bx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and dl, bl
xor bl, dil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
