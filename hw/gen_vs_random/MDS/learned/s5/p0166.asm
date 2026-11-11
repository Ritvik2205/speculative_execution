.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 27170
bts rdi, rcx
or sil, al
or bl, cl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
or dx, 125
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
or sil, -49
or al, -61
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
or sil, dl
or al, 16
xor sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
