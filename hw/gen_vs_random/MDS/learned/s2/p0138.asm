.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
btr ebx, eax
and ax, 19740
or cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edi
xor al, -4
and bl, al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
or sil, dl
xor al, sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xor sil, 27
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
xor dl, 8
xor al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
