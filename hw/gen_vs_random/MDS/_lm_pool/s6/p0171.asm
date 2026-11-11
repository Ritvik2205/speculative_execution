.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
xor dl, bl
test sil, dl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 80
or dl, -21
and al, 106
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
or bl, dl
xor al, bl
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and eax, 454700988
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
