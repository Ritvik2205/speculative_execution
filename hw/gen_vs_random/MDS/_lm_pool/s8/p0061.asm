.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 91
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 21
test ecx, -1843375753
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
bts rsi, rbx
or al, 30
test al, cl
and cx, -8
or sil, al
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and al, sil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
