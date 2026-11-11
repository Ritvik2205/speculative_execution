.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rsi, rsi
or al, 16
jmp .bb_0.1
.bb_0.1:
test esi, 425331143
jmp .bb_0.2
.bb_0.2:
test sil, dil
and al, bl
test sil, cl
bt si, cx
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
btc rdi, 221
test bl, -114
or al, -24
or al, 25
or cl, al
xor sil, cl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
