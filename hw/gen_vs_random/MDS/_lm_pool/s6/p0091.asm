.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and dl, sil
xor edi, 59
and al, bl
test al, 127
or sil, -49
test dl, 48
and bl, 68
or al, 37
or al, dl
btr rbx, 193
xor rax, -404206377
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 74
or rbx, rcx
or eax, 678817098
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
