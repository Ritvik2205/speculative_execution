.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
bts rdx, 200
btr di, di
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
or dl, al
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovnle dx, si
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
btr dx, 47
or rdi, 21
xor sil, bl
xor sil, dil
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 81
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
test rsi, 98
cmovo rdi, rsi
xor al, dl
btc bx, ax
or di, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
