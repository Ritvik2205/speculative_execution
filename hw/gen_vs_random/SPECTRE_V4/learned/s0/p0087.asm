.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 22
sub bx, di
cmp rax, 1097504565
test rbx, 1219566903
test al, 72
cmp al, -44
and rsi, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rsi]
test eax, 1600638830
add al, -44
xor bl, cl
or dl, al
and dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
or al, dil
xor bl, cl
and dil, -23
xor sil, sil
and sil, dil
or edi, -78
mov dl, al
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
test dl, -102
test cl, -10
add cl, dil
test bl, 110
add dl, cl
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
sbb al, dl
xor al, -120
sbb bl, -75
add al, al
add al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
