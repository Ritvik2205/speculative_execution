.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
bts rax, rcx
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
not dl
and si, -121
test dil, -80
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
or rcx, 54
btr si, 208
and al, -103
xor al, 34
and dil, sil
and di, 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
