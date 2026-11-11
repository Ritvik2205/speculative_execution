.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], esi
btr eax, esi
test dil, -51
not dil
bts rax, 77
btr cx, si
test al, dl
xor al, -26
test cl, dil
xor al, -4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and bl, bl
xor al, dil
and eax, 33
xor dl, al
and rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
