.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 19740
not dl
xor cl, al
or al, sil
test sil, bl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
test ebx, -961564216
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
xor al, 99
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
not sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
