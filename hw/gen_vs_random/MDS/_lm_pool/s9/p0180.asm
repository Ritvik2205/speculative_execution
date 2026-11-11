.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
or al, dil
and sil, -9
and rax, 498847670
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
xor cl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
or bl, sil
or sil, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
xor dil, dl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
