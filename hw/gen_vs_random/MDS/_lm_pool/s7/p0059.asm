.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ecx
test sil, cl
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
and bx, 22
xor bl, -61
and al, sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
and al, -55
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 30
not sil
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and bl, bl
xor al, dl
test rax, -2052112368
xor dx, 70
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
test bl, al
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
