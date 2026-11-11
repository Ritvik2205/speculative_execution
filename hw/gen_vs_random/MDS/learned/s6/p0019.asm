.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, al
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
or al, 54
test edi, -1252846009
or al, 37
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
xor bl, -88
or bl, -52
test rbx, 10
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
xor al, dil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
or rsi, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
