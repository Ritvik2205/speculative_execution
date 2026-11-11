.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, al
test al, sil
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
btc cx, di
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -2966447
and al, bl
or al, bl
btr ax, 193
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test ebx, -961564216
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or dil, al
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
