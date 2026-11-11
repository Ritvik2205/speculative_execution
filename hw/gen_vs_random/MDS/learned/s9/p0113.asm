.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
or al, dil
or cl, -36
or al, 37
xor dil, -70
test sil, -96
test bl, -9
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
bt si, di
test dil, 46
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or sil, bl
or ax, 16560
test dl, al
cmovnp rdi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
or dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
