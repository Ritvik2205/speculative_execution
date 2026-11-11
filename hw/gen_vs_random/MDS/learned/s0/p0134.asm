.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and sil, 89
and rcx, 107
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
test al, -7
xor bl, al
xor al, -26
or cl, 119
and dl, -73
test sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -52
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
