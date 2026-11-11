.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -122
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
btr si, bx
and al, sil
and dl, cl
xor dl, -19
or cl, -77
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
and edi, 23
jmp .bb_0.4
.bb_0.4:
and ax, si
xor sil, dl
and al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
