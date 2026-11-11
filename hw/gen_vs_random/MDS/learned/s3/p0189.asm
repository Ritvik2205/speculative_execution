.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
test al, 91
test al, 66
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
test ecx, -1843375753
xor bl, -61
xor dl, al
bt dx, bx
xor rax, -773894210
and dl, -73
or bl, -54
xor al, dil
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
